<?php
/**
 * Booster for WooCommerce - Module - Multicurrency Product Base Price
 *
 * @version 4.4.0
 * @since   2.4.8
 * @author  Algoritmika Ltd.
 */

if ( ! defined( 'ABSPATH' ) ) exit;

if ( ! class_exists( 'WCJ_Multicurrency_Base_Price' ) ) :

	class WCJ_Multicurrency_Base_Price extends WCJ_Module {

		/**
		 * Constructor.
		 *
		 * @version 4.3.1
		 * @since   2.4.8
		 */
		function __construct() {

			$this->id         = 'multicurrency_base_price';
			$this->short_desc = __( 'Multicurrency Product Base Price', 'woocommerce-jetpack' );
			$this->desc       = __( 'Enter prices for products in different currencies.', 'woocommerce-jetpack' );
			$this->link_slug  = 'woocommerce-multicurrency-product-base-price';
			parent::__construct();

			if ( $this->is_enabled() ) {

				add_action( 'add_meta_boxes',    array( $this, 'add_meta_box' ) );
				add_action( 'save_post_product', array( $this, 'save_meta_box' ), PHP_INT_MAX, 2 );
				add_filter( 'woocommerce_currency_symbol', array( $this, 'change_currency_symbol_on_product_edit' ), PHP_INT_MAX, 2 );

				$this->do_convert_in_back_end = ( 'yes' === get_option( 'wcj_multicurrency_base_price_do_convert_in_back_end', 'no' ) );

				if ( $this->do_convert_in_back_end || wcj_is_frontend() ) {
					$this->price_hooks_priority = wcj_get_module_price_hooks_priority( 'multicurrency_base_price' );
					wcj_add_change_price_hooks( $this, $this->price_hooks_priority, false );
				}

				// Compatibility with WooCommerce Price Filter Widget
				$this->handle_price_filter_widget_compatibility();
			}
		}

		/**
		 * Adds Compatibility with WooCommerce Price Filter Widget.
		 *
		 * @version 4.4.0
		 * @since   4.3.1
		 */
		function handle_price_filter_widget_compatibility() {
			add_action( 'updated_post_meta', array( $this, 'update_base_price_meta_on_price_update' ), 10, 3 );
			add_action( 'updated_post_meta', array( $this, 'update_base_price_meta_on_base_price_currency_update' ), 10, 3 );
			add_action( 'added_post_meta', array( $this, 'update_base_price_meta_on_base_price_currency_update' ), 10, 3 );
			add_filter( 'woocommerce_product_query_meta_query', array( $this, 'add_base_price_on_product_meta_query' ) );
			add_action( 'updated_option', array( $this, 'update_products_base_price_on_exchange_rate_change' ), 10, 3 );
			add_action( 'updated_post_meta', array( $this, 'handle_price_filter_compatibility_flag_on_base_price_update' ), 10, 4 );
			add_action( 'updated_post_meta', array( $this, 'handle_price_filter_compatibility_flag_on_base_price_currency_update' ), 10, 4 );
			add_filter( 'woocommerce_price_filter_sql', array( $this, 'change_woocommerce_price_filter_sql' ) );

			// Compatibility with third party price filters
			if ( 'yes' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp_tp', 'no' ) ) {
				add_filter( 'query', array( $this, 'change_third_party_price_filter_sql' ) );
				add_filter( 'prdctfltr_meta_query', array( $this, 'add_base_price_on_product_meta_query' ) );
			}
		}

		/**
		 * Changes the sql from third party price filters comparing with the same sql from WooCommerce price filter.
		 * This is only necessary due to some third party plugin not use the 'woocommerce_price_filter_sql' hook
		 *
		 * @version 4.4.0
		 * @since   4.4.0
		 *
		 * @see WC_Widget_Price_Filter::get_filtered_price()
		 * @param $sql
		 *
		 * @return string
		 */
		public function change_third_party_price_filter_sql( $sql ) {
			if (
				is_admin() ||
				( false === strpos( $sql, "SELECT min( FLOOR( price_meta.meta_value ) ) as min_price" ) && false === strpos( $sql, "max( CEILING( price_meta.meta_value ) ) as max_price" ) )
			) {
				return $sql;
			}
			$sql = $this->change_woocommerce_price_filter_sql( $sql );
			return $sql;
		}

		/**
		 * Changes WooCommerce Price Filter Widget SQL.
		 *
		 * All in all, it creates the min and max from '_price' meta, and from '_wcj_multicurrency_base_price' if there is the '_wcj_multicurrency_base_price_comp_pf' meta
		 *
		 * @version 4.4.0
		 * @since   4.3.1
		 *
		 * @see WC_Widget_Price_Filter::get_filtered_price()
		 * @param $sql
		 *
		 * @return string
		 */
		function change_woocommerce_price_filter_sql($sql){
			if (
				is_admin() ||
				( ! is_shop() && ! is_product_taxonomy() ) ||
				! wc()->query->get_main_query()->post_count ||
				'no' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp', 'no' )
			) {
				return $sql;
			}

			global $wpdb;
			$args       = wc()->query->get_main_query()->query_vars;
			$tax_query  = isset( $args['tax_query'] ) ? $args['tax_query'] : array();
			$meta_query = isset( $args['meta_query'] ) ? $args['meta_query'] : array();
			if ( ! is_post_type_archive( 'product' ) && ! empty( $args['taxonomy'] ) && ! empty( $args['term'] ) ) {
				$tax_query[] = array(
					'taxonomy' => $args['taxonomy'],
					'terms'    => array( $args['term'] ),
					'field'    => 'slug',
				);
			}
			foreach ( $meta_query + $tax_query as $key => $query ) {
				if ( ! empty( $query['price_filter'] ) || ! empty( $query['rating_filter'] ) ) {
					unset( $meta_query[ $key ] );
				}
			}
			$meta_query = new WP_Meta_Query( $meta_query );
			$tax_query  = new WP_Tax_Query( $tax_query );
			$meta_query_sql = $meta_query->get_sql( 'post', $wpdb->posts, 'ID' );
			$tax_query_sql  = $tax_query->get_sql( $wpdb->posts, 'ID' );
			$sql = "SELECT MIN(FLOOR(IF(pm2.meta_value=1, pm3.meta_value, pm.meta_value))) AS min_price, MAX(CEILING(IF(pm2.meta_value=1, pm3.meta_value, pm.meta_value))) AS max_price FROM {$wpdb->posts}";
			$sql .= " JOIN {$wpdb->postmeta} as pm ON {$wpdb->posts}.ID = pm.post_id " . $tax_query_sql['join'] . $meta_query_sql['join'];
			$sql .= " LEFT JOIN {$wpdb->postmeta} as pm2 ON {$wpdb->posts}.ID = pm2.post_id AND pm2.meta_key = '_wcj_multicurrency_base_price_comp_pf' ";
			$sql .= " LEFT JOIN {$wpdb->postmeta} as pm3 ON {$wpdb->posts}.ID = pm3.post_id AND pm3.meta_key = '_wcj_multicurrency_base_price' ";
			$sql .= " 	WHERE {$wpdb->posts}.post_type IN ('" . implode( "','", array_map( 'esc_sql', apply_filters( 'woocommerce_price_filter_post_type', array( 'product' ) ) ) ) . "')				
					AND {$wpdb->posts}.post_status = 'publish'
					AND pm.meta_key IN ('" . implode( "','", array_map( 'esc_sql', apply_filters( 'woocommerce_price_filter_meta_keys', array( '_price' ) ) ) ) . "')
					AND pm.meta_value > '' ";
			$sql .= $tax_query_sql['where'] . $meta_query_sql['where'];
			$search = WC_Query::get_main_search_query_sql();
			if ( $search ) {
				$sql .= ' AND ' . $search;
			}
			return $sql;
		}

		/**
		 * Updates '_wcj_multicurrency_base_price' when '_wcj_multicurrency_base_price_currency' changes.
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param $meta_id
		 * @param $object_id
		 * @param $meta_key
		 */
		function update_base_price_meta_on_base_price_currency_update( $meta_id, $object_id, $meta_key ) {
			if (
				'no' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp', 'no' ) ||
				! function_exists( 'wc_get_product' ) ||
				'_wcj_multicurrency_base_price_currency' !== $meta_key ||
				! is_a( $product = wc_get_product( $object_id ), 'WC_Product' )
			) {
				return;
			}
			$this->update_wcj_multicurrency_base_price_meta( $product );
		}

		/**
		 * Updates '_wcj_multicurrency_base_price' when '_price' meta is updated.
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param $meta_id
		 * @param $object_id
		 * @param $meta_key
		 */
		function update_base_price_meta_on_price_update( $meta_id, $object_id, $meta_key ){
			if (
				'no' === get_option('wcj_multicurrency_base_price_advanced_price_filter_comp') ||
				! function_exists( 'wc_get_product' ) ||
				'_price' !== $meta_key ||
				! is_a( $product = wc_get_product( $object_id ), 'WC_Product' )
			) {
				return;
			}
			$this->update_wcj_multicurrency_base_price_meta( $product );
		}

		/**
		 * Adds compatibility with price filter adding '_wcj_multicurrency_base_price' on product meta query.
		 * It only compares products with '_wcj_multicurrency_base_price_comp_pf' meta
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param $query
		 *
		 * @return mixed
		 */
		function add_base_price_on_product_meta_query( $query ) {
			if (
				! isset( $query['price_filter'] ) || empty( $query['price_filter'] ) ||
				'no' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp', 'no' )
			) {
				return $query;
			}
			$price_filter                              = $price_filter_wcj = $query['price_filter'];
			$price_filter_wcj['key']                   = '_wcj_multicurrency_base_price';
			$price_filter_wcj['wcj_mcpb_price_filter'] = 1;
			unset( $query['price_filter'] );
			$query['price_filter'] = array(
				'relation' => 'OR',
				array(
					'relation' => 'AND',
					$price_filter,
					array(
						'key'     => '_wcj_multicurrency_base_price_comp_pf',
						'compare' => 'NOT EXISTS',
					)
				),
				array(
					'relation' => 'AND',
					$price_filter_wcj,
					array(
						'key'     => '_wcj_multicurrency_base_price_comp_pf',
						'compare' => 'EXISTS',
					)
				)
			);
			return $query;
		}

		/**
		 * Updates '_wcj_multicurrency_base_price' meta on products by currency when exchange rate changes inside 'Multicurrency Product Base Price' module.
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param $option_name
		 * @param $old_value
		 * @param $option_value
		 */
		function update_products_base_price_on_exchange_rate_change( $option_name, $old_value, $option_value ){
			if (
				'no' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp', 'no' ) ||
				false === strpos( $option_name, 'wcj_multicurrency_base_price_exchange_rate_' )
			) {
				return;
			}
			$currency_number = substr( $option_name, strrpos( $option_name, '_' ) + 1 );
			$currency        = get_option( 'wcj_multicurrency_base_price_currency_' . $currency_number );
			$the_query       = $this->get_products_by_base_price_currency( '=', $currency );
			if ( $the_query->have_posts() ) {
				foreach ( $the_query->posts as $post_id ) {
					$this->update_wcj_multicurrency_base_price_meta( $post_id );
				}
				wp_reset_postdata();
			}
		}

		/**
		 * Flags a product with '_wcj_multicurrency_base_price_comp_pf' if its '_wcj_multicurrency_base_price_currency' is different from base woocommerce currency.
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param $meta_id
		 * @param $object_id
		 * @param $meta_key
		 * @param $meta_value
		 */
		function handle_price_filter_compatibility_flag_on_base_price_currency_update( $meta_id, $object_id, $meta_key, $meta_value ) {
			if (
				'no' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp', 'no' ) ||
				! function_exists( 'wc_get_product' ) ||
				'_wcj_multicurrency_base_price_currency' !== $meta_key ||
				! is_a( $product = wc_get_product( $object_id ), 'WC_Product' )
			) {
				return;
			}
			if ( $meta_value === get_option( 'woocommerce_currency' ) ) {
				delete_post_meta( $product->get_id(), '_wcj_multicurrency_base_price_comp_pf' );
			} else {
				update_post_meta( $product->get_id(), '_wcj_multicurrency_base_price_comp_pf', true );
			}
		}

		/**
		 * Flags a product with '_wcj_multicurrency_base_price_comp_pf' if its '_price' is != '_wcj_multicurrency_base_price'
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param $meta_id
		 * @param $object_id
		 * @param $meta_key
		 * @param $meta_value
		 */
		function handle_price_filter_compatibility_flag_on_base_price_update( $meta_id, $object_id, $meta_key, $meta_value ) {
			if (
				'no' === get_option( 'wcj_multicurrency_base_price_advanced_price_filter_comp', 'no' ) ||
				! function_exists( 'wc_get_product' ) ||
				'_wcj_multicurrency_base_price' !== $meta_key ||
				! is_a( $product = wc_get_product( $object_id ), 'WC_Product' )
			) {
				return;
			}
			if ( $meta_value === get_post_meta( $product->get_id(), '_price', true ) ) {
				delete_post_meta( $product->get_id(), '_wcj_multicurrency_base_price_comp_pf' );
			} else {
				update_post_meta( $product->get_id(), '_wcj_multicurrency_base_price_comp_pf', true );
			}
		}

		/**
		 * Gets products by base price currency.
		 *
		 * @version 4.3.1
		 * @since   4.3.1
		 *
		 * @param string $compare
		 * @param string $currency
		 *
		 * @return WP_Query
		 */
		function get_products_by_base_price_currency( $compare = '=', $currency = '' ) {
			if ( empty( $currency ) ) {
				$currency = get_option( 'woocommerce_currency' );
			}
			$args  = array(
				'post_type'              => 'product',
				'posts_per_page'         => - 1,
				'no_found_rows'          => true,
				'update_post_meta_cache' => false,
				'update_post_term_cache' => false,
				'fields'                 => 'ids',
				'meta_query'             => array(
					array(
						'key'     => '_wcj_multicurrency_base_price_currency',
						'value'   => $currency,
						'compare' => $compare
					)
				)
			);
			$query = new WP_Query( $args );
			return $query;
		}

		/**
		 * Updates '_wcj_multicurrency_base_price' meta.
		 *
		 * @version 4.4.0
		 * @since   4.3.1
		 *
		 * @param $product
		 * @param null $price
		 *
		 * @return bool
		 */
		function update_wcj_multicurrency_base_price_meta( $product, $price = null ) {
			if ( filter_var( $product, FILTER_VALIDATE_INT ) ) {
				$product = wc_get_product( $product );
			}
			if ( ! is_a( $product, 'WC_Product' ) ) {
				return false;
			}
			if ( ! $price ) {
				$price = $this->change_price( get_post_meta( $product->get_id(), '_price', true ), $product );
			}
			update_post_meta( $product->get_id(), '_wcj_multicurrency_base_price', $price );
			return true;
		}

		/**
		 * change_price_grouped.
		 *
		 * @version 2.7.0
		 * @since   2.5.0
		 */
		function change_price_grouped( $price, $qty, $_product ) {
			if ( $_product->is_type( 'grouped' ) ) {
				foreach ( $_product->get_children() as $child_id ) {
					$the_price = get_post_meta( $child_id, '_price', true );
					$the_product = wc_get_product( $child_id );
					$the_price = wcj_get_product_display_price( $the_product, $the_price, 1 );
					if ( $the_price == $price ) {
						return $this->change_price( $price, $the_product );
					}
				}
			}
			return $price;
		}

		/**
		 * change_price.
		 *
		 * @version 2.7.0
		 * @since   2.4.8
		 */
		function change_price( $price, $_product ) {
			return wcj_price_by_product_base_currency( $price, wcj_get_product_id_or_variation_parent_id( $_product ) );
		}

		/**
		 * get_variation_prices_hash.
		 *
		 * @version 3.5.0
		 * @since   2.4.8
		 */
		function get_variation_prices_hash( $price_hash, $_product, $display ) {
			$multicurrency_base_price_currency = get_post_meta( wcj_get_product_id_or_variation_parent_id( $_product, true ), '_' . 'wcj_multicurrency_base_price_currency', true );
			$price_hash['wcj_multicurrency_base_price'] = array(
				'currency'           => $multicurrency_base_price_currency,
				'exchange_rate'      => wcj_get_currency_exchange_rate_product_base_currency( $multicurrency_base_price_currency ),
				'rounding'           => get_option( 'wcj_multicurrency_base_price_round_enabled', 'no' ),
				'rounding_precision' => get_option( 'wcj_multicurrency_base_price_round_precision', get_option( 'woocommerce_price_num_decimals' ) ),
				'save_prices'        => get_option( 'wcj_multicurrency_base_price_save_prices', 'no' ),
			);
			return $price_hash;
		}

		/**
		 * change_currency_symbol_on_product_edit.
		 *
		 * @version 3.9.0
		 * @since   2.4.8
		 */
		function change_currency_symbol_on_product_edit( $currency_symbol, $currency ) {
			if ( is_admin() ) {
				global $pagenow;
				if (
					( 'post.php' === $pagenow && isset( $_GET['action'] ) && 'edit' === $_GET['action'] ) ||                                          // admin product edit page
					( ! $this->do_convert_in_back_end && 'edit.php' === $pagenow && isset( $_GET['post_type'] ) && 'product' === $_GET['post_type'] ) // admin products list
				) {
					$multicurrency_base_price_currency = get_post_meta( get_the_ID(), '_' . 'wcj_multicurrency_base_price_currency', true );
					if ( '' != $multicurrency_base_price_currency ) {
						remove_filter( 'woocommerce_currency_symbol', array( $this, 'change_currency_symbol_on_product_edit' ), PHP_INT_MAX, 2 );
						$return = get_woocommerce_currency_symbol( $multicurrency_base_price_currency );
						add_filter(    'woocommerce_currency_symbol', array( $this, 'change_currency_symbol_on_product_edit' ), PHP_INT_MAX, 2 );
						return $return;
					}
				}
			}
			return $currency_symbol;
		}

	}

endif;

return new WCJ_Multicurrency_Base_Price();
