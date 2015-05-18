###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'description', ->
  scope = undefined
  element = undefined

  beforeEach module('cards', 'widgets/cards/description/description-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<description></description>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().description.name).to.equal 'description'
