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
 * Text Domain: wcms18-starwars
 * Domain Path: /languages
 */

require_once $_SERVER['DOCUMENT_ROOT'] . '/vendor/facebook/graph-sdk/src/Facebook/autoload.php';
include 'sf-feed-tokens.php';
function output_FB_feed( $atts ) {

    $a = shortcode_atts( array(
       'app_id' => FB_APP_ID,
       'app_secret' => FB_APP_SECRET,
       'access_token' => false, //FB_ACCESS_TOKEN
       'feed_limit' => 2
    ), $atts );

    $fb = new Facebook\Facebook([
        'app_id' => $a['app_id'],
        'app_secret' => $a['app_secret'],
        'default_graph_version' => 'v3.1'
    ]);

    try {
        $response = $fb->get(
        '/sheepfriday/?fields=feed.limit('. $a['feed_limit'] .'){message,attachments,created_time{subattachments,media}},picture,name',
        $a['access_token']//FB_ACCESS_TOKEN
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
                    var_dump($img['media']['image']['src']);
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
