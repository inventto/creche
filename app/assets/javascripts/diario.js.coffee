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
    image = self.parent().find("img")
    image.attr('src',"assets/ok.png")
    removeOk = -> image.remove()
    setTimeout(removeOk, 3000)
  toggleError = ->
    image = self.parent().find("img")
    image.attr('src',"assets/error.png")
    removeError = -> image.remove()
    setTimeout(removeError, 10000)

  opts =
    em: self.parents("div.tab-pane").attr("id")
    agiu: self.attr("name")
    como: self.attr("value") || $(@).val()
  $.ajax "/diario/info/#{aluno_id}", type: 'POST', data: opts, success: toggleOk, error: toggleError

$("input[type=radio]").on "click", updateInfo
$("select").on "change", updateInfo

