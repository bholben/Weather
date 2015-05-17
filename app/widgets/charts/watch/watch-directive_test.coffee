###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'watch', ->
  scope = undefined
  element = undefined

  beforeEach module('widgets', 'widgets/charts/watch/watch-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<watch></watch>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().watch.name).to.equal 'watch'
