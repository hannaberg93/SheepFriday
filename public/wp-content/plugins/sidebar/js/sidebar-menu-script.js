(function($) {
   $(document).ready(function() {
      $.post(
         UID_ajax_object.ajax_url,
         {
            action: 'get_via_ajax'
         }
      )
      .done(function (res) {
         $('.widget_uid-name-widget').each( function(i, widget) {
            let content_elem = $(widget).find('.UID-name-content')
            $(content_elem).html(res.count)
         })
         console.log("Round trip complete!", res.results[0])
      })
      .fail(function (err) {
         console.log("Oops. ", err)
      })
   })
})(jQuery)


// function get_something_via_ajax() {
//    return "Something from ajax"
// }