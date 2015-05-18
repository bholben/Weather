
angular.module 'data'
.service 'ApiWeather', class ApiWeather

  constructor: (_) ->
    URL = 'http://api.openweathermap.org/data/2.5'

    appId = '277d48f0b68fea15a56528f74ea33b2d'

    @cities = [
      {name: 'Atlanta, GA',         id: 4180439}
      {name: 'Boston, MA',          id: 4930956}
      (name: 'Portland, ME',        id: 4975802)
      {name: 'Washington, D.C.',    id: 4140963}
      {name: 'West Palm Beach, FL', id: 4177887}
      {name: 'Wilmington, NC',      id: 4499379}
    ]

    @ranges = [
      {name: '12-hour'}
      {name: '24-hour'}
    ]

    @url = (city) ->
      dataType = '/forecast/city'
      city = '?id=' + _.findWhere(@cities, {name: city}).id
      appId = '&APPID=' + appId
      URL + dataType + city + appId

