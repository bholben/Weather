###global describe, beforeEach, it, browser ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
expect = chai.expect
CommonPagePo = require './common.po'

chai.use chaiAsPromised

describe 'Common page', ->
  commonPage = undefined

  beforeEach ->
    commonPage = new CommonPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/common'

  it 'should say CommonCtrl', ->
    expect(commonPage.heading.getText()).to.eventually.equal 'common'
    expect(commonPage.text.getText()).to.eventually.equal 'CommonCtrl'
