
angular.module 'cards'
.service 'PressureChart', class PressureChart

  constructor: (BarCharts) ->

    @options = BarCharts.options

