(function($) {

     $(function() {
          if(window.location.href.endsWith("/shop/") || (window.location.protocol + '//' +  window.location.hostname + '/') === window.location.href || (window.location.protocol + '//' +  window.location.hostname + '/sv/') === window.location.href){
               localStorage.removeItem('categorySelectFilter');
               localStorage.removeItem('brandSelectFilter');
          }

          // Remember the product category
          if (location.pathname.includes('/product-category/')) {
               localStorage.setItem('categorySelectFilter', location.href);
          }

          // Keep selected option when selected/page refresh
          if (localStorage.getItem('categorySelectFilter')) {
              $("#categorySelectFilter option[value='" + (localStorage.getItem('categorySelectFilter')) + "']").prop('selected', true);
              $('#categoryDefaultFilterOption').attr('disabled', 'disabled');
          }

          // Remember the brand
          if (location.pathname.includes('/brand/')) {
               localStorage.setItem('brandSelectFilter', location.href);
          }
          
          if (localStorage.getItem('brandSelectFilter')) {
               $("#brandSelectFilter option[value='" + (localStorage.getItem('brandSelectFilter')) + "']").prop('selected', true);
               $('#brandDefaultFilterOption').attr('disabled', 'disabled');
          }
      });

      $(function() {
          $("#clearForms").click(function(){
               localStorage.removeItem('categorySelectFilter');
               localStorage.removeItem('brandSelectFilter');
          });
      });

})(jQuery);