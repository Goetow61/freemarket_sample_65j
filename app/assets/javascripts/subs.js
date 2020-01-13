$(document).on('turbolinks:load', function() { 
$(function(){
  $('.imgs-sub').hover(function(){
      //オーバーした画像urlを取得
      var imageurl = $(this).attr('src');
      $('.smallpreview').attr('src',imageurl);
  });
  
});
});