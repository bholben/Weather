###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Cards', ->
  service = undefined

  beforeEach module 'cards.description'

  beforeEach inject (Cards) ->
    service = Cards

  it 'should equal Cards', ->
    expect(service.get()).to.equal 'Cards'
