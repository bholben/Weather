
angular.module 'ctrlComm'
.config ($routeProvider) ->
  $routeProvider
  .when '/home',
    templateUrl: 'home/home.tpl.html'
    controller: 'HomeCtrl'
    controllerAs: 'home'
  .otherwise
    redirectTo: '/home'

