###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'LocalStore', ->
  service = undefined

  beforeEach module 'common'

  beforeEach inject (LocalStore) ->
    service = LocalStore

  it 'should equal LocalStore', ->
    expect(service.get()).to.equal 'LocalStore'
