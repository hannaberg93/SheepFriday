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
 * Text Domain: Fab Plugin
 * Domain Path: /languages
 */

require_once $_SERVER['DOCUMENT_ROOT'] . '/vendor/facebook/graph-sdk/src/Facebook/autoload.php';
require_once "includes/Class-FB_Keys.php";
require_once "includes/Class-FB_Url_Settup.php";
require_once "includes/Class-FB_Loop.php";
require_once "includes/Class-FB_Connect.php";
include "settings/settings.php";

function sheep_output_FB_feed( $atts ) {
    $keys = new FB_Keys(APP_ID, APP_SECRET);

    $a = shortcode_atts( array(
    'app_id' => $keys->set_ID(), //Set the ID thru the keys object.
    'app_secret' => $keys->set_Secret(), //Set the secret thru the keys object.
    'access_token' => false, //Use false as default, force user to put access token as argument.
    'feed_limit' => 2
    ), $atts );

    //Set object with values needed.
    $url = new FB_url_settup($a['feed_limit'],['message','attachments','created_time'],['subattachments','media']);

    //Convert object to facebook endpoint.
    $endpoint = $url->convert_to_url($a['feed_limit'],['message','attachments','created_time'],['subattachments','media']);

    //Create a new connection
    $connection = new FB_Connect;
    $connection->connect($a['app_id'],$a['app_secret'],$endpoint,$a['access_token']);

    //Convert he JSON to PHP array
    $array = json_decode($connection->get_graphNode(),true);
    $feed = $array['feed'];

    //Loop over the array
    $loop = new FB_Loop;
    return $loop->loop_over_FB_feed($feed,$array);
}
add_shortcode( 'facebookfeed', 'sheep_output_FB_feed' );