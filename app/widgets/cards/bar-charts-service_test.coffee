###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'BarCharts', ->
  service = undefined

  beforeEach module 'cards'

  beforeEach inject (BarCharts) ->
    service = BarCharts

  it 'should equal BarCharts', ->
    expect(service.get()).to.equal 'BarCharts'
