
angular.module 'cards'
.service 'HumidityChart', class HumidityChart

  constructor: (Cards) ->

    @options = Cards.options
    @options.chart.title.text = 'Humidity'

