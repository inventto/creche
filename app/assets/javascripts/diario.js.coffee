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
  self = $(@)
  self.parent().append "<img src='assets/loading.png' alt='loading'/>"
  toggleOk = ->
    console.log( self.parent().find("img").get(0))
    image = self.parent().find("img")
    image.attr('src',"assets/ok.png")
    hideImage = -> image.remove()
    setTimeout(hideImage, 3000)

  opts =
    em: self.parents("div.tab-pane").attr("id")
    name: self.attr("name")
    value: self.attr("value") || $(@).val()
  $.ajax "/diario/info/#{aluno_id}", type: 'POST', data: opts, success: toggleOk

$("input[type=radio]").on "click", updateInfo
$("select").on "change", updateInfo

