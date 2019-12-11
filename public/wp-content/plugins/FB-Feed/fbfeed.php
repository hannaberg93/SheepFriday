<?php
/**
 * Plugin Name: Facebook Feed
 * Plugin URI:  
 * Description: This plugin for displaying some StarWars trivia.
 * Version:     0.1
 * Author:      Fab
 * Author URI:  https://pluginseverywhere.noooo
 * License:     WTFPL
 * License URI: http://www.wtfpl.net/
 * Text Domain: wcms18-starwars
 * Domain Path: /languages
 */

 // Connect to the FB API
//  $fb = new Facebook\Facebook([
//     'app_id' => FB_APP_ID,
//     'app_secret' => FB_APP_SECRET,
//     'default_graph_version' => 'v3.1'
// ]);
require_once $_SERVER['DOCUMENT_ROOT'] . '/vendor/facebook/graph-sdk/src/Facebook/autoload.php';
include 'sf-feed-tokens.php';

function output_FB_feed( $atts ) {

    $a = shortcode_atts( array(
       'app_id' => FB_APP_ID,
       'app_secret' => FB_APP_SECRET,
       'access_token' => FB_ACCESS_TOKEN
    ), $atts );

    $fb = new Facebook\Facebook([
        'app_id' => $a['app_id'],
        'app_secret' => $a['app_secret'],
        'default_graph_version' => 'v3.1'
    ]);

    try {
        $response = $fb->get(
 
        '/sheepfriday/?fields=feed{message,attachments}',
        FB_ACCESS_TOKEN
        );
    } catch(FacebookExceptionsFacebookResponseException $e) {
        echo 'Graph returned an error: ' . $e->getMessage();
        exit;
    } catch(FacebookExceptionsFacebookSDKException $e) {
        echo 'Facebook SDK returned an error: ' . $e->getMessage();
        exit;
    }
    $graphNode = $response->getGraphNode();
    $array = json_decode($graphNode,true);
    
    var_dump($array['feed']);
    //Scan thru the array feed retrieved from the json_decode
    foreach ($array['feed'] as $item) {
        //Check if $item is an array
        if (is_array($item)){
            //  Scan through inner loop
            
                // Returns id
                var_dump($item['message']); 
                // if ($array['feed'][$value]['attachments'][0]['media']['image']['src']){
                //     $content .='<img src="' . $array['feed'][$value]['attachments'][0]['media']['image']['src'] . '"class="post-img" alt="Postpics" height="25%" width="50vw">';
                //     $content .='<div>' . $item["message"] . '</div>';
                // }
    
        $content = '<div id=#'.$item["id"].'>';
            

        $content .='</div>';
        var_dump($content);
        
    }
    else {
        $content .='<div>' . $item["message"] . '</div>';
    }

    return $content;
    }
}
add_shortcode( 'facebookfeed', 'output_FB_feed' );
