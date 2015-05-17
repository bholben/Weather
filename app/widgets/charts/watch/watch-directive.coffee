
angular.module 'widgets'
.directive 'watch', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/watch/watch-directive.tpl.html'
  controller: 'WatchCtrl as watch'


.controller 'WatchCtrl', class WatchCtrl
  constructor: ($scope, Watch, DataCache, Conversions) ->

    convertTime = Conversions.epochTimeToAmPm

    $scope.$watch (-> DataCache.temps), (t) => @temps = t
    $scope.$watch (-> DataCache.descrips), (d) => @descrips = d

    $scope.$watch (-> DataCache.humidities), (h) =>
      values = h and h.map (d) -> {label: convertTime(d[0]), value: d[1]}
      @data = [values: values]
      @options = Watch.options

