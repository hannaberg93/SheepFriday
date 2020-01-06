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
                    <a href="' . get_permalink(woocommerce_get_page_id('shop')) . '" class="btn btn-primary ml-2" id="clearForms">Clear</a>
                </div>
            </div>';
        }

        public function init() {	
            if(is_shop() || is_product_category() || is_tax()) { 
                remove_action( 'woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30 );
                
                $url = $_SERVER['REQUEST_URI'];
                $tokens = explode('/', $url);
                $filterType = $tokens[sizeof($tokens)-3];
                $filterValue = $tokens[sizeof($tokens)-2];
                $allowedCategories = [];
                $allowedBrands = [];
                
                if ($tokens[1] === 'product-category') {
                    $category = get_queried_object();
                    $data = [];

                    foreach(wc_get_products([ 'category' => [$category->slug]]) as $product){
                        foreach($product->get_attributes() as $attribute){
                            if (!(isset($attribute) && $attribute->get_terms())) {
                                continue;
                            }
                            foreach ($attribute->get_terms() as $term){
                                $data[$term->term_id] = $term->name;
                            }
                        }
                    }
                    $allowedBrands = $data;
                } else if ($filterType === 'brand') {
                    $args = array(
                        'post_type' => 'product',
                        'tax_query' => array(
                        array(
                            'taxonomy'      => 'pa_brand',
                            'terms'         => $filterValue,
                            'field'         => 'slug',
                            'operator'      => 'IN'
                            )
                        )
                    );
                    $products = get_posts($args);
                    foreach($products as $product) {
                        foreach(get_the_terms( $product->ID, 'product_cat' ) as $category) {
                            array_push($allowedCategories, $category->name);
                        }
                    }
                }
                
                $this->getFormSelect(get_terms([
                    'taxonomy' => 'product_cat',
                ]), 'category', $allowedCategories, NULL);

                $this->getFormSelect(get_terms([
                    'taxonomy' => 'pa_brand',
                ]), 'brand', NULL, $allowedBrands);

                woocommerce_catalog_ordering();
            }
        }

        public function getFormSelect($items, $title, $allowedCategories, $allowedBrands){
            if(!empty($items)){ ?>
                <form class="flex-grow-1">
                    <select value="" class="custom-select filterby" id="<?php echo $title . 'SelectFilter' ?>" onChange="window.location.href=this.value" name="<?php echo $title . 'SelectFilter' ?>">
                        <option id="<?php echo $title; ?>DefaultFilterOption" value=""> <?php _e('Filter by ', 'understrap') . _e($title, 'understrap'); ?></option>

                        <?php foreach($items as $item){
                            if($item->parent == 0){
                                if($title === 'brand'){
                                    if (sizeof($allowedBrands) > 0 && !in_array($item->name, $allowedBrands)) {
                                        continue;
                                    } ?>
                                    <option value="<?php echo get_term_link($item->term_id); ?>"><?php esc_html_e($item->name, 'understrap'); echo ' (' . $item->count . ')';
                                }else if($title === 'category'){ 
                                    if (sizeof($allowedCategories) > 0 && !in_array($item->name, $allowedCategories)) {
                                        continue;
                                    } ?>
                                    <option value="<?php echo get_term_link($item->term_id); ?>"><?php esc_html_e($item->name, 'understrap');
                                }

                                foreach($items as $subitem){
                                    if($subitem->parent == $item->term_id){ 
                                        if (sizeof($allowedCategories) > 0 && !in_array($subitem->name, $allowedCategories)) {
                                            continue;
                                        } ?>
                                        <option value="<?php echo get_term_link($subitem->term_id); ?>"> - <?php esc_html_e($subitem->name, 'understrap'); echo ' (' . $subitem->count . ')'; ?></option>
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