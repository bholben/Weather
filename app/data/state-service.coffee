
angular.module 'data'
.service 'State', class State
  constructor: (DataCache, ApiWeather) ->

    @city = ApiWeather.cities[0].name
    @setCity = (city) ->
      @city = city
      update()

    @range = ApiWeather.ranges[0].name
    @setRange = (range) ->
      @range = range
      update()

    update = => DataCache.update {city: @city, range: @range}

