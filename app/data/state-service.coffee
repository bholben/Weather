
angular.module 'data'
.service 'State', class State

  constructor: (DataCache, ApiWeather) ->

    @city = ApiWeather.cities[0].name
    @setCity = (city) ->
      @city = city
      update('city')

    @range = ApiWeather.ranges[1].name
    @setRange = (range) ->
      @range = range
      update('range')

    update = (caller) =>
      DataCache.update {city: @city, range: @range}, caller

    update()

