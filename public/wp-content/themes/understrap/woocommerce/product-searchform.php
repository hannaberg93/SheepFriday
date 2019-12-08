<?php
/**
 * The template for displaying product search form in navbar
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/product-searchform.php.
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
?>

<!-- Search form, large screens -->
<div class="search-form d-none d-lg-block d-l-none d-xl-block text-center">

	<form class="form-inline" role="search" method="get" class="woocommerce-product-search" action="<?php echo esc_url( home_url( '/' ) ); ?>">

		<label class="sr-only" for="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>"><?php esc_html_e( 'Search for:', 'understrap' ); ?></label>

		<input class="form-control" type="search" id="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>" class="search-field field form-control" placeholder="<?php echo esc_attr__( 'Search products&hellip;', 'understrap' ); ?>" value="<?php echo get_search_query(); ?>" name="s">
		<input type="hidden" name="post_type" value="product" />

		<span class="input-group-append">
			<button class="submit btn pl-0 pr-0 ml-1" type="submit" value="<?php echo esc_attr_x( 'Search', 'submit button', 'understrap' ); ?>">
				<i class="fa fa-search"></i>
			</button>
		</span>

	</form>

</div> <!-- /.search-form -->


<!-- Search dropdown, medium and small screens -->
<div class="search-dropdown d-lg-none d-l-block" style="position: initial;">

	<button class="search-button btn dropdown-toggle" type="button" id="dropdownSearchButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" value="<?php echo esc_attr_x( 'Search', 'understrap' ); ?>">
		<i class="fa fa-search"></i>
	</button>

	<div class="dropdown-menu" id="navbarSupportedContent" aria-labelledby="dropdownSearch" >

		<form class="input-group md-form form-sm form-2 pl-0" role="search" method="get" class="woocommerce-product-search" action="<?php echo esc_url( home_url( '/' ) ); ?>">

			<label class="sr-only" for="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>"><?php esc_html_e( 'Search for:', 'understrap' ); ?></label>

			<input class="form-control my-0 py-1" type="search" id="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>" class="search-field field form-control" placeholder="<?php echo esc_attr__( 'Search products&hellip;', 'understrap' ); ?>" value="<?php echo get_search_query(); ?>" name="s">
			<input type="hidden" name="post_type" value="product" />

			<button class="submit btn p-0" type="submit" value="<?php echo esc_attr_x( 'Search', 'submit button', 'understrap' ); ?>">
				<i class="fa fa-search"></i>
			</button>

		</form>

	</div> <!-- /.dropdown-menu -->

</div> <!-- /.search-dropdown -->
