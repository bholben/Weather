
angular.module 'cards'
.directive 'pressure', ->
  restrict: 'E'
  templateUrl: 'widgets/cards/pressure/pressure-directive.tpl.html'
  controller: 'PressuretCtrl as pressure'


.controller 'PressuretCtrl', class PressuretCtrl
  constructor: ($scope, DataCache, PressureChart) ->

    # Get data and options for the pressure chart.
    pressuresWatcher = $scope.$on 'pressures updated', =>
      @data = [values: DataCache.pressures]
    @options = PressureChart.options

    $scope.$on 'destroy', pressuresWatcher

