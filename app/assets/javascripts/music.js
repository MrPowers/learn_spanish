$(document).ready(function(){
  var players = document.getElementsByClassName("audio-player");
  $("select").change(function() {
    var speed = $(this).val();
    $.each(players, function( index, player ) {
      player.playbackRate = speed;
    });
  });
});

