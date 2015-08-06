$(document).keyup(function(event){
  if(event.keyCode == 13){
    if($("#next-question").length != 0) {
      $("#next-question")[0].click();
    }
  }
});
