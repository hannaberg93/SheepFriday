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

                $this->getFormSelect(get_terms([
                    'taxonomy' => 'product_cat',
                ]), 'category');


                $this->getFormSelect(get_terms([
                    'taxonomy' => 'pa_brand',
                ]), 'brand');

                woocommerce_catalog_ordering();
            }
        }

        public function getFormSelect($items, $title){
            if(!empty($items)){ ?>
                <form class="flex-grow-1">
                    <select class="custom-select filterby" id="selectFilter" onChange="window.location.href=this.value">
                        <option disabled value="" label="<?php echo 'Filter by ' . $title; ?>"></option>
                        <?php foreach($items as $item){
                            if($item->parent == 0){

                                if($title === 'brand'){ ?>
                                    <option value="<?php echo get_term_link($item->term_id); ?>"><?php echo esc_html($item->name) . ' (' . $item->count . ')';
                                }else if($title === 'category'){ ?>
                                    <option value="<?php echo get_term_link($item->term_id); ?>"><?php echo esc_html($item->name);
                                }

                                foreach($items as $subitem){
                                    if($subitem->parent == $item->term_id){ ?>
                                        <option value="<?php echo get_term_link($subitem->term_id); ?>"> - <?php echo esc_html($subitem->name) . ' (' . $subitem->count . ')'; ?></option>
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