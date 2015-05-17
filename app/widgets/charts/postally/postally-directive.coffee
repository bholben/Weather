
angular.module 'widgets'
.directive 'postally', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/postally/postally-directive.tpl.html'
  controller: 'PostallyCtrl as postally'


.controller 'PostallyCtrl', class PostallyCtrl
  constructor: ($scope, DataCache) ->
    tempsWatcher = $scope.$on 'temperatures updated', (event, data) =>
      @temps = data
    pressuresWatcher = $scope.$on 'pressures updated', (event, data) =>
      @pressures = data
    humiditiesWatcher = $scope.$on 'humidities updated', (event, data) =>
      @humidities = data

    $scope.$on 'destroy', tempsWatcher
    $scope.$on 'destroy', pressuresWatcher
    $scope.$on 'destroy', humiditiesWatcher

