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

?>


<div class="accordion pt-3" id="sidebar-menu">
  <?php 
    foreach ($all_categories as $cat) {
      if($cat->category_parent == 0 && $cat->slug !== 'uncategorized') {
          $category_id = $cat->term_id;
          ?>
          <div class="card border-0 rounded-0">
            <div class="card-header product-menu-category p-0 border-0 rounded-0" id="<?php echo $cat->slug ?>">
              <h2 class="mb-0">
                <button class="btn p-0 pl-3 pt-2 pb-2 w-100 text-left" type="button" data-toggle="collapse" data-target="#collapse-<?php echo $cat->slug ?>" aria-expanded="true" aria-controls="collapse-<?php echo $cat->slug ?>">
                  <?php 
                    switch ($cat->slug) {
                      case 'baked-goods':
                        echo "<i class='fa fa-bread-slice pr-2'></i>";
                        break;
                      case 'drinks':
                        echo "<i class='fa fa-glass-whiskey pr-2'></i>";
                        break;
                      case 'fruit-vegetables':
                        echo "<i class='fa fa-carrot pr-2'></i>";
                        break;
                      case 'meat':
                        echo "<i class='fa fa-drumstick-bite pr-2'></i>";
                        break;
                      case 'milk-products':
                        echo "<i class='fa fa-cheese pr-2'></i>";
                        break;
                      case 'snacks':
                        echo "<i class='fa fa-cookie-bite pr-2'></i>";
                        break;
                  }
                  ?>
                  <span><?php echo $cat->name ?></span>
                </button>
              </h2>
            </div>

            <div id="collapse-<?php echo $cat->slug ?>" class="product-menu-sub-category collapse hide" aria-labelledby="<?php echo $cat->slug ?>">
              <div class="card-body p-0 pl-3 pt-3">
                <?php
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

                  $sub_cats = get_categories( $args2 );
                  if($sub_cats) {
                    echo "<ul class='list-unstyled'>";
                      foreach($sub_cats as $sub_category) {
                        echo "<a class=href='link-unstyled'" . get_term_link($sub_category->slug, 'product_cat') . ">
                          <li class='sub-cat-title'>" . $sub_category->name . '</li>
                        </a>';
                      }
                    echo "</ul>";
                  }
                ?>
              </div>
            </div>
          </div><!-- card -->
        <?php 
          }
        } ?>

</div> <!-- #left-sidebar -->