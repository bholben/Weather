###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'lakeSelector', ->
  scope = undefined
  element = undefined

  beforeEach module('ctrlComm', '/lake-selector-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<lakeSelector></lakeSelector>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().lakeSelector.name).to.equal 'lakeSelector'
