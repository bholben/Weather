
angular.module 'cards'
.service 'PressureChart', class PressureChart

  constructor: (BarCharts) ->

    @options = BarCharts.options
    @options.chart.title.text = 'Barometer'

