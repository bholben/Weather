
angular.module 'widgets'
.directive 'watch', ->
  restrict: 'E'
  templateUrl: 'widgets/charts/watch/watch-directive.tpl.html'
  controller: 'WatchCtrl as watch'


.controller 'WatchCtrl', class WatchCtrl
  constructor: ($scope, Watch, DataCache) ->

    # Get data and options for the humidity chart.
    $scope.$watch (-> DataCache.humidities), (h) => @data = [values: h]
    @options = Watch.options

