###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'broadcast', ->
  scope = undefined
  element = undefined

  beforeEach module('widgets', 'widgets/charts/broadcast/broadcast-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<broadcast></broadcast>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().broadcast.name).to.equal 'broadcast'
