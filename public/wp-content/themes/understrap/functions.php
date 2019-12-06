<?php
/**
 * Understrap functions and definitions
 *
 * @package understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

$understrap_includes = array(
	'/theme-settings.php',                  // Initialize theme default settings.
	'/setup.php',                           // Theme setup and custom theme supports.
	'/widgets.php',                         // Register widget area.
	'/enqueue.php',                         // Enqueue scripts and styles.
	'/template-tags.php',                   // Custom template tags for this theme.
	'/pagination.php',                      // Custom pagination for this theme.
	'/hooks.php',                           // Custom hooks.
	'/extras.php',                          // Custom functions that act independently of the theme templates.
	'/customizer.php',                      // Customizer additions.
	'/custom-comments.php',                 // Custom Comments file.
	'/jetpack.php',                         // Load Jetpack compatibility file.
	'/class-wp-bootstrap-navwalker.php',    // Load custom WordPress nav walker. Trying to get deeper navigation? Check out: https://github.com/understrap/understrap/issues/567
	'/woocommerce.php',                     // Load WooCommerce functions.
	'/editor.php',                          // Load Editor functions.
	'/wp-admin.php',                        // /wp-admin/ related functions
	'/deprecated.php',                      // Load deprecated functions.
);

foreach ( $understrap_includes as $file ) {
	$filepath = locate_template( 'inc' . $file );
	if ( ! $filepath ) {
		trigger_error( sprintf( 'Error locating /inc%s for inclusion', $file ), E_USER_ERROR );
	}
	require_once $filepath;
}


/* Get menu items */

add_action('sheep_get_nav_menu_items', 'sheep_get_menu_items');

function sheep_get_menu_items() {
    $menu_name = 'primary';
    $locations = get_nav_menu_locations();
    $menu = wp_get_nav_menu_object($locations[$menu_name]);
    $menuitems = wp_get_nav_menu_items($menu->term_id);

    foreach($menuitems as $menuitem){
	    if($menuitem->title === 'Cart'){
		    echo '<a href=" ' . $menuitem->url . ' ">
			    <i class="fa fa-shopping-cart"></i>
		    </a>';
		    unset($menuitem->title);
	    }
	    if($menuitem->title === 'My account'){
		    echo '<a href=" ' . $menuitem->url . ' ">
			    <i class="fa fa-user-circle"></i>
		    </a>';
		    unset($menuitem->title);
	    }
    }
    echo '<a href=" ' . $menuitem->url . ' ">
	    <li class="nav-item">' . $menuitem->title . '</li>
    </a>';
}




