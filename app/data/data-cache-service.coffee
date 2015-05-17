
angular.module 'data'
.service 'DataCache', class DataCache
  constructor: ($http, $q, $rootScope, ApiWeather, Conversions) ->

    logs = => console.debug 'DataCache.temps: ', @temps

    toF = Conversions.kelvinToFarenheit

    cacheTemperatures = (res) =>
      @temps = res.data.list.map (d) -> [1000 * d.dt, toF(d.main.temp)]
      $rootScope.$broadcast 'temperatures updated'
      logs()

    cachePressures = (res) ->
      @pressures = res.data.list.map (d) -> [1000 * d.dt, d.main.pressure]
      $rootScope.$broadcast 'pressures updated'

    cacheHumidities = (res) ->
      @humidities = res.data.list.map (d) -> [1000 * d.dt, d.main.humidity]
      $rootScope.$broadcast 'humidities updated'

    cacheDescriptions = (res) ->
      @descrips = res.data.list.map (d) -> [1000 * d.dt, d.weather.description]
      $rootScope.$broadcast 'descriptions updated'

    @update = (obj) ->
      console.debug 'obj: ', obj
      cityWeather = ApiWeather.url(obj.city)
      $http.get(cityWeather).then (res) -> cacheTemperatures res
      # Simulate hitting different endpoints...
      $http.get(cityWeather).then (res) -> cachePressures res
      $http.get(cityWeather).then (res) -> cacheHumidities res
      $http.get(cityWeather).then (res) -> cacheDescriptions res

