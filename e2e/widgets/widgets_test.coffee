###global describe, beforeEach, it, browser ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
expect = chai.expect
WidgetsPagePo = require './widgets.po'

chai.use chaiAsPromised

describe 'Widgets page', ->
  widgetsPage = undefined

  beforeEach ->
    widgetsPage = new WidgetsPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/widgets'

  it 'should say WidgetsCtrl', ->
    expect(widgetsPage.heading.getText()).to.eventually.equal 'widgets'
    expect(widgetsPage.text.getText()).to.eventually.equal 'WidgetsCtrl'
