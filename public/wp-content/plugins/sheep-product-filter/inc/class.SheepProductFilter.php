<?php

if (!class_exists('SheepProductFilter')) {
    class SheepProductFilter {
        public function __construct() {	
            add_action('woocommerce_before_shop_loop', [$this, 'startRow'], 0);
            add_action('woocommerce_before_shop_loop', [$this, 'init'], 0);
            add_action('woocommerce_before_shop_loop', [$this, 'endRow'], 0);
        }

        public function startRow() {
            echo 
            '<div class="row mt-2 mb-2">
                <div class="custom-order col-12 d-flex align-items-center">';
        }

        public function endRow() {         
            echo 
                '
                    <a href="' . get_site_url() . '/shop' . '" class="btn btn-primary ml-2" id="clearForms">Clear</a>
                </div>
            </div>';
        }

        public function init() {	
            if(is_shop() || is_product_category() || is_tax() || is_front_page()) { 

                remove_action( 'woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30 );
                
                // get url parts
                $url = $_SERVER['REQUEST_URI'];
                $urlParts = explode('/', $url);

                // if swedish version
                if($urlParts[1] === 'sv'){
                    $urlModifier = 1;
                }else{
                    $urlModifier = 0;
                }
                
                // set either brand or category
                if ((sizeof($urlParts) > 2)) {
                    $filterType = $urlParts[sizeof($urlParts)-3];
                    $filterValue = $urlParts[sizeof($urlParts)-2];
                } else {
                    $filterType = '';
                    $filterValue = '';
                }

                $allowedCategories = [];
                $allowedBrands = [];
                $categoryBrandInfo = [];

                if ($urlParts[1 + $urlModifier] === 'product-category') {
                    // get current category
                    $category = get_queried_object();
                    $categoryName = $category->slug;

                    // change category name if swedish version ex category-sv
                    if(substr($categoryName, strlen($categoryName) -3) == '-sv'){
                        $categoryName = substr($categoryName, 0, strlen($categoryName) -3);
                    }
                    
                    $allowedBrands = $this->getBrandsInCategory($categoryName);
                }
                
                if ($filterType === 'brand') {
                    $args = [
                        'post_type' => 'product',
                        'tax_query' => [[
                            'taxonomy'      => 'pa_brand',
                            'terms'         => $filterValue,
                            'field'         => 'slug',
                        ]]
                    ];
                    
                    $products = get_posts($args);
                    
                    // get brands
                    foreach($products as $product) {
                        foreach(get_the_terms( $product->ID, 'product_cat' ) as $category) {
                            array_push($allowedCategories, $category->name);
                            $categoryTerm = get_term_link($category->term_id);

                            // get brands from products in selected category
                            foreach($this->getBrandsInCategory($category->name) as $id) {
                                if (!isset($categoryBrandInfo[$categoryTerm])) {
                                    $categoryBrandInfo[$categoryTerm] = [];
                                }
                                if (!in_array(get_term_link($id), $categoryBrandInfo[$categoryTerm])) {
                                    array_push($categoryBrandInfo[$categoryTerm], get_term_link($id));
                                }
                            }
                        }
                    }
                }
                
                $this->getFormSelect(get_terms([
                    'taxonomy' => 'product_cat',
                ]), 'category', $allowedCategories, NULL);

                $this->getFormSelect(get_terms([
                    'taxonomy' => 'pa_brand',
                ]), 'brand', NULL, $allowedBrands);

                // if brand is selected encode to json for custom-js.js
                if (!empty($categoryBrandInfo)) { ?>
                        <script>
                            var categoryBrandInfo = <?php echo json_encode($categoryBrandInfo); ?>;
                        </script>
                <?php }

                // get woocommerces default ordering dropdown
                woocommerce_catalog_ordering();
            }
        }

        public function getBrandsInCategory($categoryName) {
            $data = [];
            foreach(wc_get_products([ 'category' => [$categoryName]]) as $product){
                // get attribute from products in category
                foreach($product->get_attributes() as $attribute){
                    if (!(isset($attribute) && $attribute->get_terms())) {
                        continue;
                    }
                    // get brand names
                    foreach ($attribute->get_terms() as $term){
                        $data[$term->term_id] = $term->name;
                    }
                }
            }
            return $data;
        }

        public function getFormSelect($items, $title, $allowedCategories, $allowedBrands){
            if(!empty($items)){ ?>
                <form class="flex-grow-1">
                    <select value="" class="custom-select filterby" id="<?php echo $title . 'SelectFilter' ?>" onChange="window.location.href=this.value" name="<?php echo $title . 'SelectFilter' ?>">
                        <option id="<?php echo $title; ?>DefaultFilterOption" value=""> <?php _e('Filter by ', 'sheep-product-filter') . _e($title, 'sheep-product-filter'); ?></option>

                        <?php foreach($items as $item){
                            if($item->parent == 0){
                                if($title === 'brand'){
                                    if (sizeof($allowedBrands) > 0 && !in_array($item->name, $allowedBrands)) {
                                        continue;
                                    } ?>
                                    <option value="<?php echo get_term_link($item->term_id); ?>"><?php echo esc_html_e($item->name, 'sheep-product-filter'); echo ' (' . $item->count . ')';
                                }else if($title === 'category'){ 
                                    if (sizeof($allowedCategories) > 0 && !in_array($item->name, $allowedCategories)) {
                                        continue;
                                    } ?>
                                    <option value="<?php echo get_term_link($item->term_id); ?>"><?php esc_html_e($item->name, 'sheep-product-filter');
                                }

                                foreach($items as $subitem){
                                    if($subitem->parent == $item->term_id){ 
                                        if (sizeof($allowedCategories) > 0 && !in_array($subitem->name, $allowedCategories)) {
                                            continue;
                                        } ?>
                                        <option value="<?php echo get_term_link($subitem->term_id); ?>"> - <?php esc_html_e($subitem->name, 'sheep-product-filter'); echo ' (' . $subitem->count . ')'; ?></option>
                                    <?php }
                                } ?>

                                </option>
                            <?php } 
                        }?>
                    </select>
                </form>

            <?php }
        }
    }
}