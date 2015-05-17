
angular.module 'common'
.service 'Conversions', class Conversions

  constructor: ->

    @kelvinToFarenheit = (kelvin) -> (kelvin - 273.15) * 9 / 5 + 32

