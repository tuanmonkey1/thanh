// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("easy-autocomplete")
//require("jquery-ujs")
//require("jquery-ui")
//require("jquery-ui/autocomplete")
import "bootstrap"
//import "packs/jquery.easy-autocomplete.min.js"

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
$(document).ready(function(){
  $("#s1").click(function(){
    $(".fa-star").css("color","black")
    $("#s1").css("color","yellow")
  })
  $("#s2").click(function(){
    $(".fa-star").css("color","black")
    $("#s1,#s2").css("color","yellow")
  })
  $("#s3").click(function(){
    $(".fa-star").css("color","black")
    $("#s1,#s2,#s3").css("color","yellow")
  })
  $("#s4").click(function(){
    $(".fa-star").css("color","black")
    $("#s1,#s2,#s3,#s4").css("color","yellow")
  })
  $("#s5").click(function(){
    $(".fa-star").css("color","black")
    $(".fa-star").css("color","yellow")
  })

})
(function($) {
  $.ajaxSettings.accepts.html = $.ajaxSettings.accepts.script;
  
  $.authenticityToken = function() {
    return $('#authenticity-token').attr('content');
  };
  
  $(document).ajaxSend(function(event, request, settings) {
    if (settings.type == 'post') {
      settings.data = (settings.data ? settings.data + "&" : "")
          + "authenticity_token=" + encodeURIComponent($.authenticityToken());
      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    }
  });
})(jQuery);

