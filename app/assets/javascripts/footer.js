$(document).ready(function() {
  var docHeight = $(window).height();
  var footerHeight = $('footer').height();
  var navbarHeight = $('.navbar-header').height();
  var footerTop = $('footer').position().top + footerHeight + navbarHeight;

  if (footerTop < docHeight) {
    $('footer').css('margin-top', 10+ (docHeight - footerTop) + 'px');
  }
});
