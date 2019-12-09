// Prevent dropdown-menu from closing when opening sub menu
jQuery(document).ready(function($){
	$('.categories-menu .product-menu-category').on("click", function(e){
		$(this).next('.product-menu-sub-category').toggle();
		e.stopPropagation();
		e.preventDefault();
	});
});
