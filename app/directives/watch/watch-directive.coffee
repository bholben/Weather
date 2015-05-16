
angular.module 'directives'
.directive 'watch', ->
  restrict: 'E'
  templateUrl: 'directives/watch/watch-directive.tpl.html'
  controller: WatchCtrl
  controllerAs: 'watch'


.controller 'WatchCtrl', class WatchCtrl
  constructor: ($scope, DataCache) ->
    $scope.$watch (-> DataCache.freshWater), (lake) => @lake = lake

