var triangleTransition = function(){
  $("#triangle_men").click(function(){
    window.location = "mens";
  });

  $("#triangle_women").click(function(){
    window.location = "womens";
  });

  $("#triangle_collection").click(function(){
    window.location = "collections";
  });
}

$(document).on('ready', triangleTransition);
$(document).on('page:load', triangleTransition);
$(document).on('page:change', triangleTransition);
