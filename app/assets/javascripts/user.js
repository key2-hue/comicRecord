$(function(){
  $('.new').on('click', function(){
    $('#new').removeClass('none');
    $('#old').addClass('none');
  })

  $('.old').on('click', function(){
    $('#new').addClass('none');
    $('#old').removeClass('none');
  });
})