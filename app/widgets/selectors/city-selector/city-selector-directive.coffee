
angular.module 'selectors'
.directive 'citySelector', ->
  restrict: 'E'
  templateUrl: 'widgets/selectors/city-selector/city-selector-directive.tpl.html'
  controller: 'CityCtrl as city'


.controller 'CityCtrl', class CityCtrl
  constructor: (ApiWeather, State) ->
    @cities = ApiWeather.cities.map (city) -> city.name
    @selected = State.city or @cities[0]
    @change = (selected) -> State.setCity selected

