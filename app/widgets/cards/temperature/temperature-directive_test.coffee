###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'temperature', ->
  scope = undefined
  element = undefined

  beforeEach module('cards', 'widgets/cards/temperature/temperature-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<temperature></temperature>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().temperature.name).to.equal 'temperature'
