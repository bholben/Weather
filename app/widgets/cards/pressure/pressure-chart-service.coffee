
angular.module 'cards'
.service 'PressureChart', class PressureChart

  constructor: (Cards) ->

    @options = Cards.options
    @options.chart.title.text = 'Barometer'

