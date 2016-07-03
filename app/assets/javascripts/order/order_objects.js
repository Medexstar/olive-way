$(document).on('ready', function(){
  $("#custom-next").click(function(){
    if( !($("#order_object_jacket_lapels").val() === "" ||
        $("#order_object_jacket_vents").val() === "" ||
        $("#order_object_jacket_buttons").val() === "")
    ){
      $("#customisation").hide();
      $("#measurement").show();
    }else{
      alert("Select Somethng!");
    }
  });
  $("div[id^='lapels-'] .form-field__tick div").click(function(e){
    $(this).css('background-color', 'rgb(62, 107, 119)');
    $("div[id^='lapels-'] .form-field__tick div").not(this).css('background-color', '');
    $("#order_object_jacket_lapels").val(e.target.innerText);
    console.log($("#order_object_jacket_lapels").val());
  });

  $("div[id^='vent-'] .form-field__tick div").click(function(e){
    $(this).css('background-color', 'rgb(151, 67, 55)');
    $("div[id^='vent-'] .form-field__tick div").not(this).css('background-color', '');
    $("#order_object_jacket_vents").val(e.target.innerText);
    console.log($("#order_object_jacket_vents").val());
  });

  $("div[id^='jacket-button-'] .form-field__tick div").click(function(e){
    $(this).css('background-color', 'rgb(71, 69, 84)');
    $("div[id^='jacket-button'] .form-field__tick div").not(this).css('background-color', '');
    $("#order_object_jacket_buttons").val(e.target.innerText);
    console.log($("#order_object_jacket_buttons").val());
  });
})
