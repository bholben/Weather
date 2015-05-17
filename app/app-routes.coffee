
angular.module 'ctrlComm'
.config ($routeProvider) ->
  $routeProvider
  .when '/home',
    templateUrl: 'home/home.tpl.html'
    controller: 'HomeCtrl as home'
  .otherwise
    redirectTo: '/home'

