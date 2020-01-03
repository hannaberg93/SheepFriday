<?php
define("APP_ID", "2221274434844713");
define("APP_SECRET", "48403dbaeba50a4d7f926016e957610f");

//get the token from the settingspage.
$token = get_option('fb_feed_options');
//Use the token as a constant.
define("ACCESSTOKEN", $token['accesstoken']);

$url = get_option('fb_feed_options');
define("FACEBOOK_URL", $token['facebook_url']);