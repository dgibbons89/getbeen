# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#owl-demo").owlCarousel
    navigation: true # Show next and prev buttons
    slideSpeed: 300
    paginationSpeed: 400
    singleItem: true
    setIntervatal: 500
    autoPlay: 5000



# "singleItem:true" is a shortcut for:
# items : 1, 
# itemsDesktop : false,
# itemsDesktopSmall : false,
# itemsTablet: false,
# itemsMobile : false

$ ->
  $('.drink_blogs').imagesLoaded ->
    $('.drink_blogs').masonry
      itemSelector: '.box'
      isFitWidth: true

