    
<?php
/* Template Name: FAQ page */
get_header();
?>


<main class="container content">
  <div class="faq-header-content">
  <!-- Do we have a page? -->
  <?php if (have_posts()) : ?>
    <!-- Yey, we has a page -->
    <?php while (have_posts()) : the_post(); ?>
      <!-- This is a Page -->
      <h1><?php the_title(); ?></h1>

      <?php the_content(); ?>

      <p><?php _e('Here are some frequently of asked questions.', 'understrap'); ?></p>
    </div>
      <!-- Accordion of FAQ -->
      <?php get_template_part('loop-templates/accordion-faq'); ?>
      <!-- End Accordion -->

      <!-- End of Page -->
    <?php endwhile; ?>
  <?php endif; ?>
  <!-- End of posts -->
</main><!-- /.container -->

<?php
get_footer();