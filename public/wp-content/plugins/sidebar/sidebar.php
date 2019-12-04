<?php
/**
 * Plugin Name: Example plugin with widget
 * Plugin Name:       Sidebar-menu
 * Plugin URI:        -
 * Description:       Sidebar-menu with food categories for Sheep Friday
 * Version:           1.0.0
 * Author:            -
 * Author URI:        -
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       wcms18-mappy-weathery
 * Domain Path:       /languages
 */

 // The above registers the plugin (a widget is a type of plugin)

// This page can also set up the front-end with the back-end if using js for ajax requests
// - The client connects to the wordpress server, which acts as a kind of proxy between client and api


// Import the api (or functions) and the class (the functions in the api will be available to the class automatically)
require('api.php');
require('class.Sidebar.php');


// Register widget
function register_widget() {
  register_widget('SidebarMenu');
}
add_action('widgets_init', 'register_widget');


// Registering js and css scripts
function enqueue_scripts_and_styles() {
  // Registering stylesheet
  wp_enqueue_style( 'sidebar-menu-style', plugins_url( '/css/sidebar-menu-style.css', __FILE__ ));

  // Registering JS script with no specific version of jquery, and to be run at the end of the doc.
  wp_enqueue_script( 'sidebar-menu-script', plugins_url( '/js/sidebar-menu-script.js', __FILE__ ), ['jquery'], false, true);

   // Making accessible the ajax_object in the js namespace (primarily for getting the ajax handler's endpoint - admin-ajax.php)
  // wp_localize_script( 'sidebar-menu-script', 'UID_ajax_object', [
  //       'ajax_url' => admin_url( 'admin-ajax.php' )
  //     ] );
}
add_action( 'wp_enqueue_scripts', 'enqueue_scripts_and_styles' );


// Linking WP ajax back-end with front-end
// function UID_name_ajax_handler() {
//   $data = get_something_from_api();
//   wp_send_json($data);
// }
// add_action( 'wp_ajax_get_via_ajax', 'UID_name_ajax_handler' );
// add_action( 'wp_ajax_nopriv_get_via_ajax', 'UID_name_ajax_handler' );

// if using js for async requests:
// - link together wp ajax handler with  from client ()
//- enqueue scripts with object added to the namespace which contains the path to this project's ajax handler (think it's called enqueue styles even for scripts
// - add that required hook for being granted the request whether logged in or not (nopriv)