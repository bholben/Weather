
angular.module 'widgets'
.directive 'watch', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/watch/watch-directive.tpl.html'
  controller: 'WatchCtrl as watch'


.controller 'WatchCtrl', class WatchCtrl
  constructor: ($scope, DataCache) ->
    $scope.$watch (-> DataCache.temps), (t) => @temps = t
    $scope.$watch (-> DataCache.pressures), (p) => @pressures = p
    $scope.$watch (-> DataCache.humidities), (h) => @humidities = h
    $scope.$watch (-> DataCache.descrips), (d) => @descrips = d

