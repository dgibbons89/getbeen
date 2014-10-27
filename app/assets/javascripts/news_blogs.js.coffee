# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#owl-news").owlCarousel
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
  $('.news_blogs').imagesLoaded ->
    $('.news_blogs').masonry
      itemSelector: '.box'
      isFitWidth: true

