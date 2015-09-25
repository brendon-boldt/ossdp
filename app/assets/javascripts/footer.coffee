root = exports ? this
root.footerReady = -> 
  $ ->
    bb = $('#bottomBanner')
    if (window.innerHeight > bb.offset().top + bb.height())
      $('#bottomBanner').css('position', 'absolute', 'bottom', '0')
      $('#bottomBannerImage').css('bottom','0')
      $('body').css('position', 'absolute')
      console.log("here")

$(document).ready(footerReady)
$(document).on('page:load', footerReady)


