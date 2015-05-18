
angular.module 'cards'
.directive 'temperature', ->
  restrict: 'E'
  templateUrl: 'widgets/cards/temperature/temperature-directive.tpl.html'
  controller: 'TemperatureCtrl as temperature'


.controller 'TemperatureCtrl', class TemperatureCtrl
  constructor: ($scope, TemperatureChart) ->

    # Get data and options for the temperature chart.
    tempsWatcher = $scope.$on 'temperatures updated', (event, data) =>
      @data = [values: data]
    @options = TemperatureChart.options

    $scope.$on 'destroy', tempsWatcher

