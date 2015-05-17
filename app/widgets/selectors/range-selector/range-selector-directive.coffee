
angular.module 'widgets'
.directive 'rangeSelector', ->
  restrict: 'E'
  templateUrl: 'widgets/selectors/range-selector/range-selector-directive.tpl.html'
  controller: 'RangeCtrl as range'


.controller 'RangeCtrl', class RangeCtrl
  constructor: (ApiWeather, State) ->
    @ranges = ApiWeather.ranges.map (range) -> range.name
    @selected = State.range or @ranges[0]
    @change = (selected) -> State.setRange selected

