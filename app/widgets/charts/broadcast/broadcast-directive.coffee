
angular.module 'widgets'
.directive 'broadcast', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/broadcast/broadcast-directive.tpl.html'
  controller: 'BroadcastCtrl as broadcast'


.controller 'BroadcastCtrl', class BroadcastCtrl
  constructor: ($scope, DataCache, PressureChart) ->

    # Get data and options for the pressure chart.
    pressuresWatcher = $scope.$on 'pressures updated', =>
      @data = [values: DataCache.pressures]
    @options = PressureChart.options

    $scope.$on 'destroy', pressuresWatcher

