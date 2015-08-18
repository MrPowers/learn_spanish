$( document ).ready(function() {
  $.each($('textarea'), function() {
    $(this).attr('rows', '1');
  });

  $('.mark-question').click(function(){
    $(this).hide();
    var html = '<span class="status_tag yes">Yes</span>';
    $(this).parent().prev().closest('td').html(html);
  });
});


