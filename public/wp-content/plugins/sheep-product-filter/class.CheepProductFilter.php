<?php

class CheepProductFilter {
	public function __construct() {		
          add_action('woocommerce_before_shop_loop', [$this, 'main'], 0);
     }

     public function main() {	
          if(is_shop() || is_product_category()){ 
               remove_action('woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30);

               // $this->sheep_custom_woo_catalog_ordering($this->sheep_get_categories());
               // $this->sheep_get_categories();

               $taxonomies = get_terms([
                    'taxonomy' => 'product_cat',
                    'hide_empty' => false
               ]);

                 
                if ( !empty($taxonomies) ) :
                    $output = '<form><select onChange="window.location.href=this.value">';
                    $output.='<option>default</option>';
                    foreach( $taxonomies as $category ) {
                        if( $category->parent == 0 ) {
                            $output.= '<option value="'. get_term_link($category->term_id) .'">' . esc_html( $category->name );
                            foreach( $taxonomies as $subcategory ) {
                                if($subcategory->parent == $category->term_id) {
                                $output.= '<option value="'. get_term_link($category->term_id) .'">
                                    -  '. esc_html( $subcategory->name ) .'</option>';
                                }
                            }
                            $output.='</a></option>';
                        }
                    }
                    $output.='</select></form>';
                    echo $output;
                endif;


               // $args = array(

               //      // 'orderby'    => 'title',
               //      // 'order'      => 'ASC',
     
               //  );
               //  $product_categories = get_terms('product_cat');
               
               // $cats = [];
               //  foreach($product_categories as $category){
               //       //var_dump($category);

               //      if($category->parent == 0) {
               //           //echo '<h4><a href="' . get_term_link( $category ) . '">' . $category->name . '</a></h4>';
               //           $cats[] = $category;


               //           $subcategories = get_categories('product_cat', [
               //                'category_parent' => $category->parent,
               //                'taxonomy'     => 'product_cat',
               //           ]);
     
               //           if($subcategories) {
               //                foreach($subcategories as $subcategory) {
               //                     $cats[] = $subcategory;
               //                     //echo '<h4><a href="' . get_term_link( $subcategory ) . '">' . $subcategory->name . '</a></h4>';
               //                }   
               //           }
               //      }
               // }
               //  //var_dump($product_categories);
               //  var_dump($cats);
               
          }
     }

       

     public function sheep_get_categories() {
          $taxonomy     = 'product_cat';
          $orderby      = 'name';  
          $empty        = 0;
        
          $args = [
                 'taxonomy'     => $taxonomy,
                 'hide_empty'   => $empty
          ];


          $cats = ['Sort by category' => __('Sort by category', 'woocommerce')];

          foreach (get_categories( $args ) as $cat) {
               if($cat->category_parent == 0) {

                    //$cats[$cat->name] =  __($cat->name, 'woocommerce');
                    $cats[] = $cat;

                    $args2 = [
                    'taxonomy'     => $taxonomy,
                    'parent'       => $cat->term_id,
                    'hide_empty'   => $empty
                    ];

                    $sub_cats = get_categories( $args2 );

                    if($sub_cats) {
                         foreach($sub_cats as $sub_category) {
                             //$cats[$sub_category->name] = __('  - ' . $sub_category->name, 'woocommerce');
                             $cats[] = $sub_category;
                         }   
                    }
               }   
          }
     return $cats;
     }


     public function sheep_custom_woo_catalog_ordering($sorting_options = []) {
          if ( ! wc_get_loop_prop( 'is_paginated' ) || ! woocommerce_products_will_display() ) {
               return;
          }

          $show_default_orderby = 'menu_order' === apply_filters( 'woocommerce_default_catalog_orderby', get_option( 'woocommerce_default_catalog_orderby', 'menu_order' ) );

          // Apply sorting options from function parameters
          $catalog_orderby_options = apply_filters('woocommerce_catalog_orderby', $sorting_options);

          $default_orderby = wc_get_loop_prop( 'is_search' ) ? 'relevance' : apply_filters( 'woocommerce_default_catalog_orderby', get_option( 'woocommerce_default_catalog_orderby', '' ) );
          $orderby         = isset( $_GET['orderby'] ) ? wc_clean( wp_unslash( $_GET['orderby'] ) ) : $default_orderby; 

          if ( wc_get_loop_prop( 'is_search' ) ) {
               $catalog_orderby_options = array_merge( array( 'relevance' => __( 'Relevance', 'woocommerce' ) ), $catalog_orderby_options );
               unset( $catalog_orderby_options['menu_order'] );
          }

          if ( ! $show_default_orderby ) {
               unset( $catalog_orderby_options['menu_order'] );
          }

          if ( ! wc_review_ratings_enabled() ) {
               unset( $catalog_orderby_options['rating'] );
          }

          if ( ! array_key_exists( $orderby, $catalog_orderby_options ) ) {
               $orderby = current( array_keys( $catalog_orderby_options ) );
          }

          wc_get_template( 'custom-orderby.php', array(
               'catalog_orderby_options' => $catalog_orderby_options,
               'orderby'                 => $orderby,
               'show_default_orderby'    => $show_default_orderby,
           ), '', plugin_dir_path( __FILE__ ) );
     }
}