###global element, By###
'use strict'

class WidgetsPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = WidgetsPage
