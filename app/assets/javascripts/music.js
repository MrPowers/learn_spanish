$(document).ready(function(){
  var player = document.getElementById("audio-player");
  $("select").change(function() {
    var speed = $(this).val();
    console.log(speed);
    player.playbackRate = speed;
  });
});

