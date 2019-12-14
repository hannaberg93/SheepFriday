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
require_once "includes/class-FB_Keys.php";
require_once "includes/class-FB_Settup.php";

function output_FB_feed( $atts ) {
    $keys = new FB_Keys("2221274434844713","48403dbaeba50a4d7f926016e957610f");

    $a = shortcode_atts( array(
    'app_id' => $keys->set_ID(), //Set the ID thru the keys object.
    'app_secret' => $keys->set_Secret(), //Set the secret thru the keys object.
    'access_token' => false, //Use false as default, force user to put access token as argument.
    'feed_limit' => 2
    ), $atts );

    //Set object with values needed.
    $url = new FB_settup($a['feed_limit'],['message','attachments','created_time'],['subattachments','media']);

    //Convert object to facebook endpoint.
    $endpoint = $url->convert_to_url($a['feed_limit'],['message','attachments','created_time'],['subattachments','media']);

    $fb = new Facebook\Facebook([
        'app_id' => $a['app_id'], //Use incoming argument as app ID
        'app_secret' => $a['app_secret'], //Use incoming argument as app Secret
        'default_graph_version' => 'v3.1'
    ]);

    try {
        $response = $fb->get(
        $endpoint,
        $a['access_token']
        );
    } catch(Facebook\Exceptions\FacebookResponseException $e) {
        echo 'Graph returned an error: ' . $e->getMessage();
        //if it fails deactivate the plugin to avoid problems with pages where shortcode is active
        deactivate_plugins( plugin_basename( __FILE__ ) );
        exit;
    } catch(Facebook\Exceptions\FacebookSDKException $e) {
        deactivate_plugins( plugin_basename( __FILE__ ) );
        //if it fails deactivate the plugin to avoid problems with pages where shortcode is active
        echo 'Facebook SDK returned an error: ' . $e->getMessage();
        exit;
    }
    $graphNode = $response->getGraphNode();
    $array = json_decode($graphNode,true);
    $feed = $array['feed'];

    
    foreach ($feed as $item) {
        //check for an image
        if ($item["message"] && $item['attachments']){
            $content .='<div class="card p-2 mt-2 shadow bg-white rounded">
                            <div class="d-inline">
                                <img src="'. $array['picture']['url'] .'"><h2 class="d-inline ml-2">'.$array['name'].'</h2><hr>
                            </div>
                        <div>
                            <p>' . $item["message"] . '</p>
                            </div>';
            //Check for several images
            if ($item['attachments'][0]['subattachments']) {
                foreach ($item['attachments'][0]['subattachments'] as $img){
                    $content .= '<img src="' . $img['media']['image']['src'] . '"class="img-responsive mt-4 mb-4 w-45 mx-auto" alt="Postpics">';
                }  
                    $content .= '<p class="font-italic">' . date('Y jS  F h:i', strtotime($item['created_time']['date'])) . '</p>
                </div>';
            }
            else{
                $content .= '<img src="' . $item['attachments'][0]['media']['image']['src'] . '"class="img-responsive mt-4 mb-4 w-75 mx-auto" alt="Postpics"></div>';
            }
        }
        //if no attachments are set render out only the message
        elseif ($item["message"] && !$item['attachments']) {
            $content .='<div class="card p-2 mt-2 shadow bg-white rounded">
                            <div class="d-inline">
                                <img src="'. $array['picture']['url'] .'"><h2 class="d-inline ml-2">'.$array['name'].'</h2><hr>
                            </div>
                            <div>
                                <p>' . $item["message"] . '</p>
                                <p class="font-italic">' . date('Y jS  F h:i', strtotime($item['created_time']['date'])) . '</p>
                            </div>
                        </div>';
        }
        else {

        }
    }
    return $content;
}
add_shortcode( 'facebookfeed', 'output_FB_feed' );
