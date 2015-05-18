
angular.module 'cards'
.service 'HumidityChart', class HumidityChart

  constructor: (BarCharts) ->

    @options = BarCharts.options

