
angular.module 'weather'
.config ($routeProvider) ->
  $routeProvider
  .when '/home',
    templateUrl: 'pages/home/home.tpl.html'
    controller: 'HomeCtrl as home'
  .otherwise
    redirectTo: '/home'

