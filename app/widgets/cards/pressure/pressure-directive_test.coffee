###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'pressure', ->
  scope = undefined
  element = undefined

  beforeEach module('cards', 'widgets/cards/pressure/pressure-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<pressure></pressure>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().pressure.name).to.equal 'pressure'
