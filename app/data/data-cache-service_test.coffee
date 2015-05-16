###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'DataCache', ->
  service = undefined

  beforeEach module 'data'

  beforeEach inject (DataCache) ->
    service = DataCache

  it 'should equal DataCache', ->
    expect(service.get()).to.equal 'DataCache'
