###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'navbar', ->
  scope = undefined
  element = undefined

  beforeEach module('ctrlComm', '/navbar-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<navbar></navbar>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().navbar.name).to.equal 'navbar'
