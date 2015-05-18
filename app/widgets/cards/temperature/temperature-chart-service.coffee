
angular.module 'cards'
.service 'TemperatureChart', class TemperatureChart

  constructor: (Cards) ->

    @options = Cards.options
    @options.chart.title.text = 'Temperatures'

