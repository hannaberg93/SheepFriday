<?php
/**
 * Understrap functions and definitions
 *
 * @package understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

$understrap_includes = array(
	'/theme-settings.php',                  // Initialize theme default settings.
	'/setup.php',                           // Theme setup and custom theme supports.
	'/widgets.php',                         // Register widget area.
	'/enqueue.php',                         // Enqueue scripts and styles.
	'/template-tags.php',                   // Custom template tags for this theme.
	'/pagination.php',                      // Custom pagination for this theme.
	'/hooks.php',                           // Custom hooks.
	'/extras.php',                          // Custom functions that act independently of the theme templates.
	'/customizer.php',                      // Customizer additions.
	'/custom-comments.php',                 // Custom Comments file.
	'/jetpack.php',                         // Load Jetpack compatibility file.
	'/class-wp-bootstrap-navwalker.php',    // Load custom WordPress nav walker. Trying to get deeper navigation? Check out: https://github.com/understrap/understrap/issues/567
	'/woocommerce.php',                     // Load WooCommerce functions.
	'/editor.php',                          // Load Editor functions.
	'/wp-admin.php',                        // /wp-admin/ related functions
	'/deprecated.php',                      // Load deprecated functions.
);

foreach ( $understrap_includes as $file ) {
	$filepath = locate_template( 'inc' . $file );
	if ( ! $filepath ) {
		trigger_error( sprintf( 'Error locating /inc%s for inclusion', $file ), E_USER_ERROR );
	}
	require_once $filepath;
}


/* Get menu items */

add_action('sheep_get_nav_menu_items', 'sheep_get_menu_items');

function sheep_get_menu_items() {
    $menu_name = 'primary';
    $locations = get_nav_menu_locations();
    $menu = wp_get_nav_menu_object($locations[$menu_name]);
    $menuitems = wp_get_nav_menu_items($menu->term_id);

    foreach($menuitems as $menuitem){
			echo '<a href=" ' . $menuitem->url . ' ">';
					if($menuitem->title === 'Cart' || $menuitem->title === 'Varukorg'){
					echo ' <span class="fa-stack fa-2x has-badge" data-count="' . WC()->cart->get_cart_contents_count() . '">
						<i class="fa fa-stack-2x"></i>
						<i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
					</span> ';
					unset($menuitem->title);
					} if($menuitem->title === 'My account' || $menuitem->title === 'Mitt konto'){
					echo '<i class="fa fa-user"></i>';
					unset($menuitem->title);
					} else{
						echo '<li class="nav-item">' . $menuitem->title . '</li>';
					}
			echo '</a>';
    }
}

/**
 * Change a currency symbol
 */
add_filter('woocommerce_currency_symbol', 'change_existing_currency_symbol', 10, 2);

function change_existing_currency_symbol( $currency_symbol, $currency ) {
     switch( $currency ) {
          case 'SEK': $currency_symbol = ':-'; break;
     }
     return $currency_symbol;
}


/**
 * Shipping by Weight
 */

add_filter( 'woocommerce_package_rates', 'sheepfriday_woocommerce_weight_shipping', 9999, 2 );

function sheepfriday_woocommerce_weight_shipping( $rates, $package ) {

     if ( WC()->cart->get_cart_contents_weight() < 9 ) {

         if ( isset( $rates['flat_rate:11'] ) ) unset( $rates['flat_rate:12'], $rates['flat_rate:13'] );

     } elseif ( WC()->cart->get_cart_contents_weight() < 20 ) {

         if ( isset( $rates['flat_rate:11'] ) ) unset( $rates['flat_rate:11'], $rates['flat_rate:13'] );

     } else {

         if ( isset( $rates['flat_rate:11'] ) ) unset( $rates['flat_rate:11'], $rates['flat_rate:12'] );

     }


     return $rates;

}

/**
 * Hide shipping rates when free shipping is available.
 */
function hide_shipping_when_free_is_available( $rates ) {
  $free = array();
  foreach ( $rates as $rate_id => $rate ) {
    if ( 'free_shipping' === $rate->method_id ) {
      $free[ $rate_id ] = $rate;
      break;
    }
  }
  return ! empty( $free ) ? $free : $rates;
}
add_filter( 'woocommerce_package_rates', 'hide_shipping_when_free_is_available', 100 );


/**
 * Show product weight on archive pages
 */
add_action( 'woocommerce_after_shop_loop_item', 'sheep_show_weights', 9 );

function sheep_show_weights() {

    global $product;
    $weight = $product->get_weight();

    if ( $product->has_weight() ) {
        echo '<div class="product-meta"><span class="product-meta-label">' . __('Weight:', 'understrap') . ' </span>' . $weight . ' ' . get_option('woocommerce_weight_unit') . '</div></br>';
    }
}


/**
* Display the weight in cart and checkout page
*/
add_filter( 'woocommerce_get_item_data', 'display_weight_data', 10, 2 );
function display_weight_data( $cart_item_data, $cart_item ) {
    if ( $cart_item['data']->get_weight() > 0 ){
        $cart_item_data[] = array(
            'name' => __( 'Weight', 'understrap' ),
            'value' =>  $cart_item['data']->get_weight()  . ' ' . get_option('woocommerce_weight_unit')
        );
    }

    return $cart_item_data;
}



add_filter( 'woocommerce_loop_add_to_cart_link', 'quantity_inputs', 10, 2 );
  function quantity_inputs( $html, $product ) {
    $qty = '';

    foreach ( WC()->cart->get_cart() as $cart_item ) {
      if($cart_item['product_id'] == $product->get_id() ){
        if (isset($cart_item['quantity'])) {
          $qty =  $cart_item['quantity'];
        }
        break;
      }
    }

    if ( $product && $product->is_type( 'simple' ) && $product->is_purchasable() && $product->is_in_stock() && ! $product->is_sold_individually() ) {
      $html = '<form action="' . esc_url( $product->add_to_cart_url() ) . '" class="sheep_product_list_cart" method="post" enctype="multipart/form-data">';
      $html .= '<span class="sheep_cart_quantity text-warning pb-2 mt-2">';
      if ( $qty !== '') {
        $html .= 'In cart: ' . $qty;
      }
      $html .= '</span>';
      $html .= woocommerce_quantity_input( array(), $product, false );
      $html .= '<button type="submit" class="btn btn-primary flex-grow-1">' . esc_html( $product->add_to_cart_text() ) . '</button>';
      $html .= '</form>';
    }
  return $html;
}
