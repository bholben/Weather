
angular.module 'common'
.service 'Conversions', class Conversions

  constructor: ($filter) ->

    @kelvinToFarenheit = (kelvin) -> (kelvin - 273.15) * 9 / 5 + 32

    # Epoch time must be in microseconds.
    @epochTimeToAmPm = (epochTime) -> $filter('date')(epochTime, 'ha')

