<?php
//define("APP_ID", "2221274434844713");
//define("APP_SECRET", "48403dbaeba50a4d7f926016e957610f");

//get the token from the settingspage.
$token = get_option('fb_feed_options');
//Use the token as a constant.
define("ACCESSTOKEN", $token['accesstoken']);

//get the url startpoint from the settingspage.
$url = get_option('fb_feed_options');
//Use the url startpoint as a constant
define("FACEBOOK_URL", $url['facebook_url']);

//get the url startpoint from the settingspage.
$id = get_option('fb_feed_options');
//Use the url startpoint as a constant
define("FACEBOOK_ID", $id['id']);

//get the url startpoint from the settingspage.
$secret = get_option('fb_feed_options');
//Use the url startpoint as a constant
define("FACEBOOK_SECRET", $secret['secret']);