<?php
/* Template Name: FAQ page */
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package understrap
 */
// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

// $container = get_theme_mod( 'understrap_container_type' );

$ads = new WP_Query([
	'post_type' => 'ad',
	'posts_per_page' => 2,
	'orderby' => 'date',
]);
?>

<?php if ($ads->have_posts()) : ?>
  <div class='row no-gutters'>
    <?php
      while ($ads->have_posts()) {
        $ads->the_post();
        get_template_part('loop-templates/content', 'ad'); 
      }

      wp_reset_postdata();
    ?>
  </div><!-- .row -->
<?php endif; ?>

<?php 
