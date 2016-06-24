$(document).ready(function(){
  var triangleWidth = ($("#landing").width()-90) / 2;
  var borderWidth = ($("#landing").width()-90) / 8;
  $('.triangle__down').css('border-top', triangleWidth + 'px solid transparent');
  $('.triangle__down').css('border-left', borderWidth + 'px solid white');
  $('.triangle__down').css('border-right', borderWidth + 'px solid white');
  $('.triangle__up').css('border-bottom', triangleWidth + 'px solid transparent');
  $('.triangle__up').css('border-left', borderWidth + 'px solid white');
  $('.triangle__up').css('border-right', borderWidth + 'px solid white');
})
