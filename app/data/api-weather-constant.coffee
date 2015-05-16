
angular.module 'data'
.constant 'ApiWeather',
  URL: 'http://api.openweathermap.org/data/2.5'
  # URL: 'http://api.openweathermap.org/data/2.5/weather?id=4180439&APPID=277d48f0b68fea15a56528f74ea33b2d'
  # URL: 'http://api.openweathermap.org/data/2.5/forecast/city?id=4180439&APPID=277d48f0b68fea15a56528f74ea33b2d'
  appId: '277d48f0b68fea15a56528f74ea33b2d'
  cityId:
    ATLANTA: 4180439

