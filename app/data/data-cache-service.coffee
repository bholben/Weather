
angular.module 'data'
.service 'DataCache', class DataCache
  constructor: ($timeout, $http, $q, $rootScope, ApiWeather) ->
    @update = (obj) ->
      if obj.hasOwnProperty 'lake' or obj.hasOwnProperty 'river'
        dataType = '/forecast'
        dataType = '/weather'
        city = '/city?id=' + ApiWeather.cityId.ATLANTA
        city = '?id=' + ApiWeather.cityId.ATLANTA
        appId = '&APPID=' + ApiWeather.appId
        url = ApiWeather.URL + dataType + city + appId
        $http.get(url).then (data) -> console.dir data
        $timeout (-> freshWaterApi obj), 2000
      if obj.hasOwnProperty 'ocean'
        $timeout (-> saltWaterApi obj), 2000
    freshWaterApi = (obj) =>
      @freshWater = obj.lake.length
      $rootScope.$broadcast 'fresh water updated'

