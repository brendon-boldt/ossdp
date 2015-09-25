root = exports ? this
root.footerReady = -> 
  $ ->
    bb = $('#bottomBanner')
    if (window.innerHeight > bb.offset().top + bb.height())
      $('#bottomBanner').css('position', 'absolute', 'bottom', '0')
      $('#bottomBannerImage').css('bottom','0')
      $('body').css('position', 'absolute')
      console.log("here")

setMinHeight = ->
  $ ->
    $('body').css('min-height', window.innerHeight + 'px')

#$(document).ready(footerReady)
#$(document).on('page:load', footerReady)
$(document).ready(setMinHeight)
$(document).on('page:load', setMinHeight)


