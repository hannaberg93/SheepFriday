<?php 
  $args = array( 
    'post_type' => 'product', 
    'posts_per_page' => 5,
    'product_tag' => 'special'
  );

  $loop = new WP_Query( $args );
  if ($loop->have_posts()) : ?>
    <div class='container'>
      <div class='row'>

        <?php endif;
        while ( $loop->have_posts() ) :
          $loop->the_post(); global $product; ?>
          <div class='col'>
            <a href='<?php the_permalink() ?>'>
              <h3 class="pb-3"><?php the_title(); ?></h3>
              <?php the_post_thumbnail(); ?>
              <p class="pt-3 pb-3"><?php echo $product->get_attribute('Special'); ?></p>
            </a>
          </div>
          
        <?php 
          endwhile;
          wp_reset_postdata(); 
        ?>
      </div>
    </div>