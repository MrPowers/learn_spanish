$(document).ready(function(){
  $('.english-sentence-button').click(function(){
    $(this).hide();
    var english = $('.english-sentence-button').siblings()[0];
    $(english).toggleClass('hide');
  });
});
