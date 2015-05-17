###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'postally', ->
  scope = undefined
  element = undefined

  beforeEach module('widgets', 'widgets/charts/postally/postally-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<postally></postally>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().postally.name).to.equal 'postally'
