# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require unify/plugins/gmap/gmap.js

map = new GMaps({
  div: '#map',
  lat: 25.173848,
  lng: 121.447575
})

marker = map.addMarker({
  lat: 25.173848,
  lng: 121.447575
  title: '淡江大學'
})

