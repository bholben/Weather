
angular.module 'cards'
.directive 'humidity', ->
  restrict: 'E'
  templateUrl: 'widgets/cards/humidity/humidity-directive.tpl.html'
  controller: 'HumidityCtrl as humidity'


.controller 'HumidityCtrl', class HumidityCtrl
  constructor: ($scope, HumidityChart, DataCache) ->

    # Get data and options for the humidity chart.
    $scope.$watch (-> DataCache.humidities), (h) => @data = [values: h]
    @options = HumidityChart.options

