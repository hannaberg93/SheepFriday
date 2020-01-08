<?php
/**
 * Plugin Name: Facebook Feed
 * Plugin URI:  
 * Description: Shortcode for retrieving facebook posts.
 * Version:     0.1
 * Author:      Fab
 * Author URI:  https://pluginseverywhere.noooo
 * License:     WTFPL
 * License URI: http://www.wtfpl.net/
 * Text Domain: fb-feed
 * Domain Path: /languages/
 */

 //Load dependencies from class.
require_once "includes/class-FB_Dependencies.php";
FB_Dependencies::load_dependencies();

function my_plugin_init() {
    load_plugin_textdomain( 'fb-feed', false, 'fb-feed/languages' );
  }
  add_action('init', 'my_plugin_init');
//load_plugin_textdomain( 'fb-feed', false, dirname( plugin_basename( __FILE__ ) ) );
// function load_fb_textdomain() {
//     load_plugin_textdomain( 'fb-feed', FALSE, basename( dirname( __FILE__ ) ) . '/languages/' );
//   }
  
//   add_action( 'plugins_loaded', 'load_fb_textdomain' );

function activate_fbfeed() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-FB_Activator.php';
	FB_Activate::activate();
}

function deactivate_fbfeed() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-FB_Deactivator.php';
	FB_Deactivate::deactivate();
}

register_activation_hook( __FILE__, 'activate_fbfeed' );
register_deactivation_hook( __FILE__, 'deactivate_fbfeed' );


function sheep_output_FB_feed( $atts ) {
    $keys = new FB_Keys(FACEBOOK_ID, FACEBOOK_SECRET); //Use the constants gained from the settingspage.

    $a = shortcode_atts( array(
    'app_id' => $keys->set_ID(), //Set the ID thru the keys object.
    'app_secret' => $keys->set_Secret(), //Set the secret thru the keys object.
    'feed_limit' => false
    ), $atts );

    //Set object with values needed.
    $url = new FB_url_settup($a['feed_limit'],['message','attachments','created_time'],['subattachments','media']);

    //Convert object to facebook endpoint.
    $endpoint = $url->convert_to_url($a['feed_limit'],['message','attachments','created_time'],['subattachments','media']);

    //Create a new connection
    $connection = new FB_Connect;
    $connection->connect($a['app_id'],$a['app_secret'],$endpoint,ACCESSTOKEN);

    //Convert he JSON to PHP array
    $array = json_decode($connection->get_graphNode(),true);
    $feed = $array['feed'];

    //Loop over the array
    $loop = new FB_Loop;
    return $loop->loop_over_FB_feed($feed,$array);

}
add_shortcode( 'sheep_facebookfeed', 'sheep_output_FB_feed' );
