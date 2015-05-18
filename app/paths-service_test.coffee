###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Paths', ->
  service = undefined

  beforeEach module 'ctrlComm'

  beforeEach inject (Paths) ->
    service = Paths

  it 'should equal Paths', ->
    expect(service.get()).to.equal 'Paths'
