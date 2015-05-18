###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'humidity', ->
  scope = undefined
  element = undefined

  beforeEach module('cards', 'widgets/cards/humidity/humidity-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<humidity></humidity>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().humidity.name).to.equal 'humidity'
