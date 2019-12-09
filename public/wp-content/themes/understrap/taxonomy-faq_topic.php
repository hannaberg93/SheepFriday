<?php

get_header();

?>

<div class="container">
<br>
<h1><?php echo get_the_archive_title(); ?></h1>
	
	<!-- Do we have posts -->
<?php if ( have_posts() ): ?>
	<div class="accordion" id="accordionFAQ">
	<!-- Yes we have posts -->
 <?php while ( have_posts() ): the_post(); ?>
 	<!-- Single FAQ start -->
              <div class="card">
                <div class="card-header">
                  <h2 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#faq-<?php the_ID(); ?>">
                      <?php the_title(); ?>
                    </button>
                  </h2>
                </div>

                <div id="faq-<?php the_ID(); ?>" class="collapse" data-parent="#accordionFAQ">
                  <div class="card-body">
                    <?php the_content(); ?>
                  </div>
                </div>
              </div>
 <?php endwhile; ?>
              </div><!-- End of Accordion -->
     
  <!-- No Posts found -->
			<?php else: ?>
				 <p><em><?php _e('Sorry, no posts found.', 'understrap'); ?></em></p>
<!--./No Posts -->
<?php endif; ?>
</div>
</div>
<?php
get_footer();

    