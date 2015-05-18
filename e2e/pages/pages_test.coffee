###global describe, beforeEach, it, browser ###
'use strict'

buildConfigFile = require('findup-sync') 'build.config.js'
buildConfig = require buildConfigFile
chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
expect = chai.expect
PagesPagePo = require './pages.po'

chai.use chaiAsPromised

describe 'Pages page', ->
  pagesPage = undefined

  beforeEach ->
    pagesPage = new PagesPagePo
    browser.driver.get buildConfig.host + ':' + buildConfig.port + '/#/pages'

  it 'should say PagesCtrl', ->
    expect(pagesPage.heading.getText()).to.eventually.equal 'pages'
    expect(pagesPage.text.getText()).to.eventually.equal 'PagesCtrl'
