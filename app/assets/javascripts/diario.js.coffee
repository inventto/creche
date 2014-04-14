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

updateInfo = ->
  aluno_id = $(@).parents("ul[data-id]").attr("data-id")
  opts =
    em: $(@).parents("div.tab-pane").attr("id")
    name: $(@).attr("name")
    value: $(@).attr("value") || $(@).val()
  $.ajax "/diario/info/#{aluno_id}", type: 'POST', data: opts

$("input[type=radio]").on "click", updateInfo
$("select").on "change", updateInfo

