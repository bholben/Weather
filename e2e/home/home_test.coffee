###global describe, beforeEach, it, browser ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
expect = chai.expect
HomePagePo = require './home.po'

chai.use chaiAsPromised

describe 'Home page', ->
  homePage = undefined

  beforeEach ->
    homePage = new HomePagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/home'

  it 'should say HomeCtrl', ->
    expect(homePage.heading.getText()).to.eventually.equal 'home'
    expect(homePage.text.getText()).to.eventually.equal 'HomeCtrl'
