###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'HomeCtrl', ->
  ctrl = undefined

  beforeEach module 'pages'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'HomeCtrl'

  it 'should have ctrlName as HomeCtrl', ->
    expect(ctrl.ctrlName).to.equal 'HomeCtrl'

