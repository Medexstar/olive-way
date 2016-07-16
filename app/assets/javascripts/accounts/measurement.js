var measurement_videos = function(){
  function changeVideoURL(videoID){
    $("#measurement__video").attr("src", "https://player.vimeo.com/video/" + videoID);
  }

  $("#measurement_shoulder").focus(function(){
    changeVideoURL("54763818");
  });
  $("#measurement_half_chest").focus(function(){
    changeVideoURL("47793390");
  });
  $("#measurement_half_jacket_waist").focus(function(){
    changeVideoURL("54763818");
  });
  $("#measurement_half_hem").focus(function(){
    changeVideoURL("47793390");
  });
  $("#measurement_back_length").focus(function(){
    changeVideoURL("54763818");
  });
  $("#measurement_sleeve_outstem").focus(function(){
    changeVideoURL("47793390");
  });
  $("#measurement_bicep").focus(function(){
    changeVideoURL("54763818");
  });

  $("#measurement_pant_outseam").focus(function(){
    changeVideoURL("47793390");
  });
  $("#measurement_half_pant_waist").focus(function(){
    changeVideoURL("54763818");
  });
  $("#measurement_half_bottom").focus(function(){
    changeVideoURL("47793390");
  });
  $("#measurement_crotch").focus(function(){
    changeVideoURL("54763818");
  });
  $("#measurement_thigh").focus(function(){
    changeVideoURL("47793390");
  });
  $("#measurement_hip").focus(function(){
    changeVideoURL("54763818");
  });
}

$(document).on('ready', measurement_videos);
$(document).on('page:load', measurement_videos);
$(document).on('page:change', measurement_videos);
