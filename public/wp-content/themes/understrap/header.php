<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

$container = get_theme_mod( 'understrap_container_type' );
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php do_action( 'wp_body_open' ); ?>
	<div class="site" id="page">

		<!-- ******************* The Navbar Area ******************* -->
		<div id="wrapper-navbar" itemscope itemtype="http://schema.org/WebSite">

		<a class="skip-link sr-only sr-only-focusable" href="#content"><?php esc_html_e( 'Skip to content', 'understrap' ); ?></a>

			<nav class="navbar navbar-expand-lg navbar-light bg-light">

				<?php if ( 'container' == $container ) : ?>
                         <div class="container">
				<?php endif; ?>
				<div class="menu-items-left row">
					<!-- Your site title as branding in the menu -->
					<?php if ( ! has_custom_logo() ) { ?>

						<?php if ( is_front_page() && is_home() ) : ?>

							<h1 class="navbar-brand site-name m-0"><a rel="home" href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" itemprop="url"><?php bloginfo( 'name' ); ?></a></h1>

						<?php else : ?>

							<a class="navbar-brand site-name m-0" rel="home" href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" itemprop="url"><?php bloginfo( 'name' ); ?></a>

						<?php endif; ?>

					<?php } else { ?>
						<div class="logo">
							<?php the_custom_logo(); ?>
						</div>
					<?php } ?> <!-- end custom logo -->


					<div class="categories-menu dropdown d-lg-none d-l-block">
						<a class="btn " href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						<i class="fa fa-bars"></i>
						</a>

						<div class="dropdown-menu nav-categories" aria-labelledby="dropdownMenuButton">
							<?php get_template_part( 'sidebar-templates/sidebar', 'menu' ); ?>
						</div>
					</div> <!-- ./categories-menu -->

					<?php get_product_search_form(); ?>
				</div>

				<div class="menu-items-right row">
					<?php do_action('sheep_get_nav_menu_items'); ?>
				</div>

				<?php if ( 'container' == $container ) : ?>
					</div> <!-- .container -->
				<?php endif; ?>

			</nav>

		</div><!-- #wrapper-navbar end -->
