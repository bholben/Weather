
angular.module 'directives'
.directive 'broadcast', ->
  restrict: 'E'
  templateUrl: 'directives/broadcast/broadcast-directive.tpl.html'
  controller: BroadcastCtrl
  controllerAs: 'broadcast'

.controller 'BroadcastCtrl', class BroadcastCtrl
  constructor: ($scope, DataCache) ->
    watcher = $scope.$on 'fresh water updated', => @lake = DataCache.freshWater
    $scope.$on 'destroy', watcher

