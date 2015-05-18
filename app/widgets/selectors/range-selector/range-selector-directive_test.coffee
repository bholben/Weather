###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'rangeSelector', ->
  scope = undefined
  element = undefined

  beforeEach module('selectors', 'widgets/range-selector-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<rangeSelector></rangeSelector>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().rangeSelector.name).to.equal 'rangeSelector'
