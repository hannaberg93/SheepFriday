<?php
/**
 * The sidebar containing the main widget area.
 *
 * @package understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

$taxonomy     = 'product_cat';
  $orderby      = 'name';  
  $show_count   = 0;      // 1 for yes, 0 for no
  $pad_counts   = 0;      // 1 for yes, 0 for no
  $hierarchical = 1;      // 1 for yes, 0 for no  
  $title        = '';  
  $empty        = 0;

  $args = array(
        'taxonomy'     => $taxonomy,
        'orderby'      => $orderby,
        'show_count'   => $show_count,
        'pad_counts'   => $pad_counts,
        'hierarchical' => $hierarchical,
        'title_li'     => $title,
        'hide_empty'   => $empty
  );
  $all_categories = get_categories( $args );
  
        // $sub_cats = get_categories( $args2 );
        // if($sub_cats) {
        //     foreach($sub_cats as $sub_category) {
        //         echo  $sub_category->name ;
        //     }   
        // }  

?>

<div class="container" id="sidebar-menu">
  <div class="row flex-column">
    <?php 
      foreach ($all_categories as $cat) {
        if($cat->category_parent == 0) {
            $category_id = $cat->term_id;       
            echo '<div class="col p-2 pl-4"><a href="'. get_term_link($cat->slug, 'product_cat') .'">'. $cat->name .'</a></div>';

            $args2 = array(
              'taxonomy'     => $taxonomy,
              'child_of'     => 0,
              'parent'       => $category_id,
              'orderby'      => $orderby,
              'show_count'   => $show_count,
              'pad_counts'   => $pad_counts,
              'hierarchical' => $hierarchical,
              'title_li'     => $title,
              'hide_empty'   => $empty
            );
          }
      }
    ?>
  </div>
</div> <!-- #left-sidebar -->
