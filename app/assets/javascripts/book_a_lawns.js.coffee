# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
source = new EventSource('/book_a_lawns/events')
source.addEventListener 'book_a_lawn', (e) ->
   book_a_lawn = $.parseJSON(e.data).book_a_lawn
  $('#calendar').append($('<li>').text("#{book_a_lawn.title}: #{book_a_lawn.description}"))