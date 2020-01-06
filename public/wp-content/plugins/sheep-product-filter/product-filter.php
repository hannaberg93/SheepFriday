<?php
/**
 * Plugin Name: Sheep Product Filter
 * Plugin URI: -
 * Description: Plugin for simple custom woocommerce products filter options in woocommerce store.
 * Version: 1.0
 * Author: Hanna Berg
 * Author URI: -
 * Text Domain: understrap

 */

require('inc/class.SheepProductFilter.php');

function sheep_enqueue_scripts(){
     wp_enqueue_script('sheep-product-filter', plugin_dir_url(__FILE__) . 'assets/js/custom-js.js', false, true);
}
add_action('wp_enqueue_scripts', 'sheep_enqueue_scripts');

new SheepProductFilter();