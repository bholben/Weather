
angular.module 'data'
.service 'ApiWeather', class ApiWeather

  constructor: (_) ->
    @URL = 'http://api.openweathermap.org/data/2.5'

    @appId = '277d48f0b68fea15a56528f74ea33b2d'

    @cities = [
      {name: 'Atlanta',           id: 4180439}
      {name: 'Boston',            id: 4930956}
      {name: 'Washington, D.C.',  id: 4140963}
      {name: 'West Palm Beach',   id: 4177887}
    ]

    @ranges = [
      {name: '9-hour',  id:  9}
      {name: '18-hour', id: 18}
    ]

    @url = (city) ->
      dataType = '/forecast/city'
      city = '?id=' + _.findWhere(@cities, {name: city}).id
      appId = '&APPID=' + @appId
      @URL + dataType + city + appId

