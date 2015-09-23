
###
$(document).ready(function () {
  if (true || $(document).height > $('#bottomBanner').offset().top) {
    $('#bottomBanner, #bottomBannerImage').css('position', 'absolute', 'bottom', '0')
  }
})
###

ready = -> 

  $ ->
    bb = $('#bottomBanner')
    if (window.innerHeight > bb.offset().top + bb.height())
      $('#bottomBanner, #bottomBannerImage').css('position', 'absolute', 'bottom', '0')


$(document).ready(ready)
$(document).on('page:load', ready)


