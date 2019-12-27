<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

get_header();

$container = get_theme_mod( 'understrap_container_type' );
?>

<?php if ( is_front_page() && is_home() ) : ?>

<?php endif; ?>

  <div class='row no-gutters'>

    <div class='col-2 col-sm-4 col-md-3 col-lg-2 d-none d-lg-block'>
      <?php get_template_part( 'sidebar-templates/sidebar', 'menu' ); ?>
    </div>

    <div class='col'>
      <div class="wrapper" id="page-wrapper">
        <div class="ads">
          <?php get_template_part('global-templates/ads') ?>
        </div>
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
