<?php

class SheepProductFilter {
	public function __construct() {		
          add_action('woocommerce_before_shop_loop', [$this, 'init'], 0);
     }

     public function init() {	
        if(is_shop() || is_product_category()){ 
            //remove_action('woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30);

            $taxonomies = get_terms([
                'taxonomy' => 'product_cat',
                'hide_empty' => false
            ]);

            $brands = get_terms([
                'taxonomy' => 'pa_brand',
                'hide_empty' => false
            ]);

            if(!empty($taxonomies)){ ?>
                <form class="woocommerce-ordering">
                    <select class="custom-select filterby" id="selectCategory" onChange="window.location.href=this.value">
                        <option>Filter by category</option>
                        <?php foreach($taxonomies as $taxonomy){
                            if($taxonomy->parent == 0){ ?>
                                <option value="<?php echo get_term_link($taxonomy->term_id); ?>"><?php echo esc_html($taxonomy->name); ?>
                                    <?php foreach($taxonomies as $subtaxonomy){
                                        if($subtaxonomy->parent == $taxonomy->term_id){ ?>
                                            <option value="<?php echo get_term_link($taxonomy->term_id); ?>"> - <?php echo esc_html($subtaxonomy->name); ?></option>
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