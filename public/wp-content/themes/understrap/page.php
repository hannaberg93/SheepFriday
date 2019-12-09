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


  <div class='row no-gutters'>

    <div class='col-2 col-sm-4 col-md-3 col-lg-2 d-none d-lg-block'>
      <?php get_template_part( 'sidebar-templates/sidebar', 'menu' ); ?>
    </div>

    <div class='col'>
      <div class="wrapper" id="page-wrapper">
        <div class="<?php echo esc_attr( $container ); ?>" id="content" tabindex="-1">
          <div class="row">
            <main class="site-main" id="main">
              <?php while ( have_posts() ) : the_post(); ?>
                <?php get_template_part( 'loop-templates/content', 'page' ); ?>
              <?php endwhile; // end of the loop. ?>
            </main><!-- #main -->
          </div><!-- .row -->
        </div><!-- #content -->
      </div><!-- #page-wrapper -->
    </div><!-- .col -->

  </div><!-- .row -->






<?php get_footer();
