var submitAmbassador = function(){
  var height = $("#amba").height();
  var width = $("#amba").width();
  var deg = Math.atan2(width, height);
  var skewRate = deg
  console.log(skewRate);
  $("#one-amba").css("transform", "skewX(" + (-1*skewRate).toString()+"rad)");
  $("#two-amba").css("transform", "skewX(" + (-1*skewRate).toString()+"rad)");
  $("#one-amba img").css("transform", "skewX(" + (skewRate).toString()+"rad)");
  $("#two-amba img").css("transform", "skewX(" + (skewRate).toString()+"rad)");
  $("#submit-ambassador").click(function(){
    var first_name = $("#ambassador_first_name").val();
    var last_name = $("#ambassador_last_name").val();
    var email = $("#ambassador_email").val();
    var university = $("#ambassador_university").val();
    var mobile = $("#ambassador_mobile").val();

    if(first_name === "" || last_name === "", email === "", university === "",
      mobile===""){
        alert("You need to fill out all field!");
        return false;
      }
    $.ajax({
      type: "POST",
      url: "/ambassador/ambassadors",
      data: {ambassador: {email: email, first_name: first_name,
        last_name: last_name, university: university, mobile: mobile }
      },
      success: function(d){
        $("#form").html("<section><h3>THANK YOU!</h3></section> \
          <section><h3>We will in contact with you as soon as possible</h3></section>");
        return false;
      },
      error: function(d){
        $("#form").html("<section><h3>Something Went Wrong</h3></section> \
          <section><h3>We will in contact with you as soon as possible</h3></section>");
        return false;
      }


    });
  });
}

$(document).ready(submitAmbassador);
$(document).on('page:load', submitAmbassador);
