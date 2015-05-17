
angular.module 'widgets'
.directive 'broadcast', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/broadcast/broadcast-directive.tpl.html'
  controller: 'BroadcastCtrl as broadcast'


.controller 'BroadcastCtrl', class BroadcastCtrl
  constructor: ($scope, DataCache) ->
    tempsWatcher = $scope.$on 'temperatures updated', =>
      @temps = DataCache.temps
    pressuresWatcher = $scope.$on 'pressures updated', =>
      @pressures = DataCache.pressures
    humiditiesWatcher = $scope.$on 'humidities updated', =>
      @humidities = DataCache.humidities

    $scope.$on 'destroy', tempsWatcher
    $scope.$on 'destroy', pressuresWatcher
    $scope.$on 'destroy', humiditiesWatcher

