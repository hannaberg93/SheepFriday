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
       'access_token' => false , //FB_ACCESS_TOKEN
       'feed_limit' => 2
    ), $atts );

    $fb = new Facebook\Facebook([
        'app_id' => $a['app_id'],
        'app_secret' => $a['app_secret'],
        'default_graph_version' => 'v3.1'
    ]);

    try {
        $response = $fb->get(
        '/sheepfriday/?fields=feed.limit('. $a['feed_limit'] .'){message,attachments}',
        FB_ACCESS_TOKEN
        );
    } catch(Facebook\Exceptions\FacebookResponseException $e) {
        echo 'Graph returned an error: ' . $e->getMessage();
        exit;
    } catch(Facebook\Exceptions\FacebookSDKException $e) {
        echo 'Facebook SDK returned an error: ' . $e->getMessage();
        exit;
    }
    $graphNode = $response->getGraphNode();
    $array = json_decode($graphNode,true);
    $feed = $array['feed'];
    foreach ($feed as $item) {
        if ($item["message"] && $item['attachments']){
            $content .='<div class="card p-2 mt-2 d-flex w-3 text-center shadow bg-white rounded">' . $item["message"];
            $content .='<img src="' . $item['attachments'][0]['media']['image']['src'] . '"class="img-responsive mt-4 w-75 mx-auto" alt="Postpics"></div>';
        }
        elseif ($item["message"] && !$item['attachments']) {
            $content .='<div class="card p-2 mt-2 shadow bg-white rounded">' . $item["message"] . '</div>';
        }
        else {
            
        }
    }
    return $content;
}
add_shortcode( 'facebookfeed', 'output_FB_feed' );
