var measurement_videos = function(){
  function changeVideoURL(videoID){
    $("#measurement__video").attr("src", "http://www.youtube.com/embed/" + videoID);
  }

  $("#measurement_shoulder").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });
  $("#measurement_half_chest").focus(function(){
    changeVideoURL("fNxUnAwUbBI");
  });
  $("#measurement_half_jacket_waist").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });
  $("#measurement_half_hem").focus(function(){
    changeVideoURL("fNxUnAwUbBI");
  });
  $("#measurement_back_length").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });
  $("#measurement_sleeve_outstem").focus(function(){
    changeVideoURL("fNxUnAwUbBI");
  });
  $("#measurement_bicep").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });

  $("#measurement_pant_outseam").focus(function(){
    changeVideoURL("fNxUnAwUbBI");
  });
  $("#measurement_half_pant_waist").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });
  $("#measurement_half_bottom").focus(function(){
    changeVideoURL("fNxUnAwUbBI");
  });
  $("#measurement_crotch").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });
  $("#measurement_thigh").focus(function(){
    changeVideoURL("fNxUnAwUbBI");
  });
  $("#measurement_hip").focus(function(){
    changeVideoURL("4hLcrVH2XpE");
  });
}

$(document).on('ready', measurement_videos);
$(document).on('page:load', measurement_videos);
$(document).on('page:change', measurement_videos);
