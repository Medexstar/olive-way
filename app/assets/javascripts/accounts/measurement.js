var measurement_videos = function(){
  function changeVideoURL(videoID){
    $("#measurement__video").attr("src", "https://www.youtube.com/embed/" + videoID);
  }

  $("#measurement_neck").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("LOt9odA15pE");
    }else{
      changeVideoURL("cQ3t8dDKug8");
    }
  });

  $("#measurement_shoulder").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("MJyS4NOBono");
    }else{
      changeVideoURL("D4rk9u0bwZE");
    }
  });
  $("#measurement_sleeve_length").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("HYL3EmHN0Uk");
    }else{
      changeVideoURL("Ofqdakg0Wac");
    }
  });
  $("#measurement_bicep").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("qrbTJJaou98");
    }else{
      changeVideoURL("xGeFkF8ySvY");
    }
  });
  $("#measurement_wrist").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("ZWAAlWhiU3o");
    }else{
      changeVideoURL("bn0OgTZ5u7w");
    }
  });
  $("#measurement_chest").focus(function(){
    changeVideoURL("TjqULAgDKHE");
  });
  $("#measurement_bust").focus(function(){
    changeVideoURL("zhbyFnP-Ps8");
  });
  $("#measurement_underbust").focus(function(){
    changeVideoURL("Rzp5R-8e5vU");
  });
  $("#measurement_back_length").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("MgRxtD4SoTw");
    }else{
      changeVideoURL("mXS6JucO8_Y");
    }
  });

  $("#measurement_waist").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("-3yWSdy-ESQ");
    }else{
      changeVideoURL("NvmOKHtaBkc");
    }
  });
  $("#measurement_hips").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("7f0N58nVULg");
    }else{
      changeVideoURL("grcEkz63SXU");
    }
  });
  $("#measurement_thigh").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("29O4lgy9t9Y");
    }else{
      changeVideoURL("f9mGeGE5Lrc");
    }
  });
  $("#measurement_rise").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("BHgnvqp-1BA");
    }else{
      changeVideoURL("-bMmuHAXnos");
    }
  });
  $("#measurement_outleg").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("TgMaiwl81Vs");
    }else{
      changeVideoURL("6hMRaLCCsw0");
    }
  });
  $("#measurement_inleg").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("bfEn7gk_BeI");
    }else{
      changeVideoURL("x4QCHafwrwQ");
    }
  });
  $("#measurement_ankle").focus(function(){
    if(($("#user-gender").text()=="male") || ($("#suit-gender").text()=="male")){
      changeVideoURL("T2rkEWGfs-w");
    }else{
      changeVideoURL("h_r4MqS-l_A");
    }
  });
}

$(document).on('ready', measurement_videos);
$(document).on('page:load', measurement_videos);
$(document).on('page:change', measurement_videos);
