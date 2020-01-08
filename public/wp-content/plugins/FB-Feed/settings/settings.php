<?php
//define("APP_ID", "2221274434844713");
//define("APP_SECRET", "48403dbaeba50a4d7f926016e957610f");

$options = get_option('fb_feed_options');

//Use the token as a constant.
define("ACCESSTOKEN", $options['accesstoken']);

//Use the url startpoint as a constant
define("FACEBOOK_URL", $options['facebook_url']);

//Use the id as a constant
define("FACEBOOK_ID", $options['id']);

//Use the secret as a constant
define("FACEBOOK_SECRET", $options['secret']);