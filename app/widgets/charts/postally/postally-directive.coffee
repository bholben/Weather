
angular.module 'widgets'
.directive 'postally', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/postally/postally-directive.tpl.html'
  controller: 'PostallyCtrl as postally'


.controller 'PostallyCtrl', class PostallyCtrl
  constructor: ($scope, $filter, DataCache) ->
    tempsWatcher = $scope.$on 'temperatures updated', (event, data) =>
      @temps = data
      @labels = data.map (d) -> $filter('date')(d[0], 'ha')
      @series = ['Series A']
      @data = [data.map (d) -> d[1]]

    pressuresWatcher = $scope.$on 'pressures updated', (event, data) =>
      @pressures = data
    humiditiesWatcher = $scope.$on 'humidities updated', (event, data) =>
      @humidities = data

    $scope.$on 'destroy', tempsWatcher
    $scope.$on 'destroy', pressuresWatcher
    $scope.$on 'destroy', humiditiesWatcher

