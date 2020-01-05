(function($) {

     $(function() {

          if(window.location.href.endsWith("/shop/")){
               localStorage.removeItem('categorySelectFilter');
               localStorage.removeItem('brandSelectFilter');
          }

          // Keep selected option when selected/page refresh
          if (localStorage.getItem('categorySelectFilter')) {
              $("#categorySelectFilter option[value='" + (localStorage.getItem('categorySelectFilter')) + "']").prop('selected', true);
              $('#categoryDefaultFilterOption').attr('disabled', 'disabled');
          }
      
          $("#categorySelectFilter").on('change', function() {
              localStorage.setItem('categorySelectFilter', $('option:selected', this).val());
          });

          if (localStorage.getItem('brandSelectFilter')) {
               $("#brandSelectFilter option[value='" + (localStorage.getItem('brandSelectFilter')) + "']").prop('selected', true);
               $('#brandDefaultFilterOption').attr('disabled', 'disabled');
          }
       
          $("#brandSelectFilter").on('change', function() {
               localStorage.setItem('brandSelectFilter', $('option:selected', this).val());
          });

      });

      $(function() {
          $("#clearForms").click(function(){
               localStorage.removeItem('categorySelectFilter');
               localStorage.removeItem('brandSelectFilter');
          });
      });

})(jQuery);