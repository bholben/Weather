
angular.module 'data'
.service 'DataCache', class DataCache
  constructor: ($http, $q, $rootScope, ApiWeather, Conversions) ->

    toF = Conversions.kelvinToFarenheit
    toAmPm = Conversions.epochTimeToAmPm

    cacheTemperatures = (res) =>
      @temps = res.data.list.slice(0, @count).map (d) ->
        {label: toAmPm(1000 * d.dt), value: toF(d.main.temp)}

      # This line goes away if we use either of the $scope.$watch techniques...
      $rootScope.$broadcast 'temperatures updated', @temps


    cachePressures = (res) =>
      @pressures = res.data.list.slice(0, @count).map (d) ->
        {label: toAmPm(1000 * d.dt), value: d.main.pressure}

      # This line goes away if we use either of the $scope.$watch techniques...
      $rootScope.$broadcast 'pressures updated'


    cacheHumidities = (res) =>
      @humidities = res.data.list.slice(0, @count).map (d) ->
        {label: toAmPm(1000 * d.dt), value: d.main.humidity}

      # This line goes away if we use either of the $scope.$watch techniques...
      $rootScope.$broadcast 'humidities updated'


    cacheDescriptions = (res) =>
      @descrips = res.data.list.slice(0, @count).map (d) ->
        [1000 * d.dt, d.weather[0].description]

      # This line goes away if we use either of the $scope.$watch techniques...
      $rootScope.$broadcast 'descriptions updated'


    @update = (obj, caller) ->
      @count = if obj.range is '12-hour' then 4 else 8
      cityWeather = ApiWeather.url(obj.city)
      # Simulate hitting multiple endpoints with every state change
      # (actually using the same endpoint 4 times here)...
      $http.get(cityWeather).then (res) -> cacheDescriptions res
      $http.get(cityWeather).then (res) -> cacheHumidities res
      $http.get(cityWeather).then (res) -> cachePressures res
      $http.get(cityWeather).then (res) -> cacheTemperatures res

