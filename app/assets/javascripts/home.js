
var bindHomeLinks = function(){
  $(".nav-link").click(function(e){
    //$(".nav-link").removeClass("active");
    $(this).addClass("active");
    e.stopPropagation();
  });
  $("#btn-search").click(function(e){
    var search = $("#input-search").val();
    $.ajax({
      url: '/search',
      type: 'GET',
      dataType: 'json',
      data: {
        'search' : search,
      },
    })
    .done(function(data) {
      debugger;
    });
  });
};

$(document).on('turbolinks:load', bindHomeLinks);
