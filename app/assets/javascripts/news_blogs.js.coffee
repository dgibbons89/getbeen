# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#owl-demo").owlCarousel
    navigation: false # Show next and prev buttons
    slideSpeed: 300
    paginationSpeed: 400
    singleItem: true
    setIntervatal: 500
    autoPlay: 5000


$ ->
  $('.news_blogs').imagesLoaded ->
    $('.news_blogs').masonry
      itemSelector: '.box'
      isFitWidth: true

