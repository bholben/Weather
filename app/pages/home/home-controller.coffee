
angular.module 'pages'
.controller 'HomeCtrl', class HomeCtrl

  constructor: ($scope, DataCache) ->

    $scope.$watch (-> DataCache.temps), (t) => @temps = t
    $scope.$watch (-> DataCache.pressures), (p) => @pressures = p
    $scope.$watch (-> DataCache.humidities), (h) => @humidities = h
    $scope.$watch (-> DataCache.descrips), (d) => @descrips = d

