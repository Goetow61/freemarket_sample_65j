$(document).on('turbolinks:load', function() { 
$(function() {
  $('.slider-list').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 5000,
    dots: true,
    dotsClass: 'slide-dots'
  });
});
});