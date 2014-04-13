# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.tabs li a').each ->
  $(@).click ->
    $("input[type=radio]:checked").attr("checked",null)
    $(".tab").tab("hide")
    $(@).tab("show")
    $(".tab-pane").hide()
    $(@).next().append($("#"+$(@).attr("data-toggle")).show())
