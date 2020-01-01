(function($) {

     $(function() {
          // Keep selected option when selected/page refresh
          if (localStorage.getItem('selectFilter')) {
              $("#selectFilter option").eq(localStorage.getItem('selectFilter')).prop('selected', true);
          }
      
          $("#selectFilter").on('change', function() {
              localStorage.setItem('selectFilter', $('option:selected', this).index());
          });
      });

      $(function() {
          var item = localStorage.getItem('selectFilter');

          if (item) {
               $("#clearForms").click(function(){
                    console.log('removing');
                    localStorage.removeItem(item);
                    //console.log(localStorage.getItem('selectFilter'));
                    //localStorage.clear();
               });
          }
      });

})(jQuery);