
angular.module 'cards'
.service 'TemperatureChart', class TemperatureChart

  constructor: (BarCharts) ->

    @options = BarCharts.options
    @options.chart.title.text = 'Temperatures'

