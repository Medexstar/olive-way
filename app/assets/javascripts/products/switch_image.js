var switchImage = function(){
  $("#option-one").click(function(){
    $("#main img").attr('src', $("#option-one img").attr('data-large'));
  });

  $("#option-two").click(function(){
    $("#main img").attr('src', $("#option-two img").attr('data-large'));
  });

  $("#option-three").click(function(){
    $("#main img").attr('src', $("#option-three img").attr('data-large'));
  });
}

$(document).on('ready', switchImage);
$(document).on('page:load', switchImage);
$(document).on('page:change', switchImage);
