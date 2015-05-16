###global describe, beforeEach, it, browser ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
expect = chai.expect
DirectivesPagePo = require './directives.po'

chai.use chaiAsPromised

describe 'Directives page', ->
  directivesPage = undefined

  beforeEach ->
    directivesPage = new DirectivesPagePo
    path = buildConfig.host + ':' + buildConfig.port + '/#/directives'
    browser.driver.get path

  it 'should say DirectivesCtrl', ->
    expect(directivesPage.heading.getText()).to.eventually.equal 'directives'
    expect(directivesPage.text.getText()).to.eventually.equal 'DirectivesCtrl'
