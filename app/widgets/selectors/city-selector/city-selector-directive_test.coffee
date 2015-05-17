###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'citySelector', ->
  scope = undefined
  element = undefined

  beforeEach module('widgets', 'widgets/selectors/city-selector/city-selector-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<citySelector></citySelector>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().citySelector.name).to.equal 'citySelector'
