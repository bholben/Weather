
angular.module 'cards'
.service 'TemperatureChart', class TemperatureChart

  constructor: (BarCharts) ->

    @options = BarCharts.options

