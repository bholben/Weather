###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'ApiWeather', ->
  constant = undefined

  beforeEach module 'data'

  beforeEach inject (ApiWeather) ->
    constant = ApiWeather

  it 'should equal 0', ->
    expect(constant).to.equal 0
