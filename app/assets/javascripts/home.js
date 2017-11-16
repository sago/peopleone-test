
var bindHomeLinks = function(){
  $(".nav-link").click(function(e){
    //$(".nav-link").removeClass("active");
    $(this).addClass("active");
    e.stopPropagation();
  });
};

$(document).on('turbolinks:load', bindHomeLinks);
