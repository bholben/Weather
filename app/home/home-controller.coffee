
angular.module 'home'
.controller 'HomeCtrl', class HomeCtrl
  constructor: ($scope, DataCache) ->
    $scope.$watch (-> DataCache.temps), (t) => @temps = t
    $scope.$watch (-> DataCache.humidities), (h) => @humidities = h
    $scope.$watch (-> DataCache.descrips), (d) => @descrips = d

