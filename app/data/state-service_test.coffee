###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'State', ->
  service = undefined

  beforeEach module 'data'

  beforeEach inject (State) ->
    service = State

  it 'should equal State', ->
    expect(service.get()).to.equal 'State'
