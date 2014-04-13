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
$("input[type=radio]").each ->
  $(@).click ->
    aluno_id = $(@).parents("ul[data-id]").attr("data-id")
    opts = {type: 'POST'}
    opts.name = $(@).attr("name")
    opts.value = $(@).attr("value")
    $.ajax "/diario/info/#{aluno_id}", opts
