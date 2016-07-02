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
    $("#order_object_jacket_lapels").val(e.target.innerText);
    console.log($("#order_object_jacket_lapels").val());
  });

  $("div[id^='vent-'] .form-field__tick div").click(function(e){
    $("#order_object_jacket_vents").val(e.target.innerText);
    console.log($("#order_object_jacket_vents").val());
  });

  $("div[id^='jacket-button-'] .form-field__tick div").click(function(e){
    $("#order_object_jacket_buttons").val(e.target.innerText);
    console.log($("#order_object_jacket_buttons").val());
  });
})
