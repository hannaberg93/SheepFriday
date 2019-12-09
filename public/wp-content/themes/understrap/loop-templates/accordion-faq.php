<?php
  // hämta ut alla blogginlägg från post_type 'faq'
  $faq_query = new WP_Query([
    'order' => 'asc',
    'orderby' => 'title',
    'post_type' => 'faq',
    'posts_per_page' => 5,
    'paged' => (get_query_var('paged')),
  ]);
  // om det finns några blogginlägg, starta en accordion
  if ($faq_query->have_posts()) {
    ?>
      <div class="accordion" id="accordionFAQ">
        <?php
          // för varje blogginlägg, skriv ut en single accordion item
          while ($faq_query->have_posts()) {
            $faq_query->the_post();
            ?>
              <!-- Single FAQ start -->
           
    <div class="panel-group margin_0" id="accordion1">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#faq-<?php the_ID(); ?>">
                        <i class="rt-icon2-bubble highlight"></i>
                      <?php the_title(); ?>
                    </button>
                  </h2>
                </div>

              </a>
           </h4>
        </div>

            <div style="height: 0px;" id="faq-<?php the_ID(); ?>" class="panel-collapse collapse">
                <div class="panel-body">
                    <?php the_content(); ?>
                  </div>
                </div>
              </div>
              <!-- Single FAQ end -->
            <?php
          }
        ?>
      </div><!-- End of Accordion -->

    <?php
    // reset postdata
    wp_reset_postdata();
  } else {
    ?>
      <p><em><?php _e('Sorry, no FAQs found.', 'understrap'); ?></em></p>
    <?php
  }
?>