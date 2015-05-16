###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'inherit', ->
  scope = undefined
  element = undefined

  beforeEach module('home', 'home/inherit-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<inherit></inherit>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().inherit.name).to.equal 'inherit'
