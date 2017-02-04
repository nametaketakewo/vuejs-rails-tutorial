# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  console.log('document ready...')
  if $('#user_index')[0]
    console.log('binding...')
    user_index = new Vue(
      el: '#user_index'
      data: {
        users: []
      }
      created: ->
        @$http.get('/users.json').then ((response) ->
          i = 0
          while i < response.body.length
            @users.push response.body[i]
            i++
          return
        ), ->
          return
        return
    )
  return
