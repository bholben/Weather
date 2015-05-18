
angular.module 'cards'
.service 'HumidityChart', class HumidityChart

  constructor: (BarCharts) ->

    @options = BarCharts.options
    @options.chart.title.text = 'Humidity'

