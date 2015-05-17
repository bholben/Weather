
angular.module 'widgets'
.directive 'postally', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/postally/postally-directive.tpl.html'
  controller: 'PostallyCtrl as postally'


.controller 'PostallyCtrl', class PostallyCtrl
  constructor: ($scope, TemperatureChart) ->

    # Get data and options for the temperature chart.
    tempsWatcher = $scope.$on 'temperatures updated', (event, data) =>
      @data = [values: data]
    @options = TemperatureChart.options

    $scope.$on 'destroy', tempsWatcher

