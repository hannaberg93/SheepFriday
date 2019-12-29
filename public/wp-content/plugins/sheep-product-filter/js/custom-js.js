(function($) {

     $('#selectCategory').on('change', function() {
          localStorage.setItem("selectCategory", $(this).val());
     });

     $(document).ready(function() {
          if ($('#selectCategory').length) {
              $('#selectCategory').val(localStorage.getItem("selectCategory"));
           }
      });

})(jQuery);