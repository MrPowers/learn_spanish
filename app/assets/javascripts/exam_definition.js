$(document).ready(function(){
  $.each($(".progress-bar"), function(){
    if($(this).html().trim() == "0% Complete") {
      $(this).addClass("progress-bar-shadowing");
    }
  });
});
