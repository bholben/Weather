###global element, By###
'use strict'

class DirectivesPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = DirectivesPage
