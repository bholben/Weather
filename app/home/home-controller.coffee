
angular.module 'home'
.controller 'HomeCtrl', class HomeCtrl
  constructor: ($scope, DataCache) ->
    $scope.$watch (-> DataCache.freshWater), (lake) => @lake = lake

    # console.debug ApiWeather.URL

    # $http.get(ApiWeather.URL).then (data) -> console.dir data

