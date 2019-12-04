<?php
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

get_header();

$container = get_theme_mod( 'understrap_container_type' );

?>

<div class="wrapper" id="page-wrapper">
  
  <div class='row'>

    <div class='col-3'>
      <?php get_template_part( 'sidebar-templates/sidebar', 'menu' ); ?>
    </div>

    <div class='col'>
      <div class="<?php echo esc_attr( $container ); ?>" id="content" tabindex="-1">
        <div class="row">
          <main class="site-main" id="main">
            <?php while ( have_posts() ) : the_post(); ?>
              <?php get_template_part( 'loop-templates/content', 'page' ); ?>
            <?php endwhile; // end of the loop. ?>
          </main><!-- #main -->
        </div><!-- .row -->
      </div><!-- #content -->
    </div><!-- .col -->

  </div><!-- .row -->

	

</div><!-- #page-wrapper -->

<?php get_footer();
