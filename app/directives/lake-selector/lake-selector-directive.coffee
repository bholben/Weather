
angular.module 'directives'
.directive 'lakeSelector', ->
  restrict: 'E'
  templateUrl: 'directives/lake-selector/lake-selector-directive.tpl.html'
  controller: LakeCtrl
  controllerAs: 'lake'


.controller 'LakeCtrl', class LakeCtrl
  constructor: (Lake, State) ->
    @lakes = Lake.lakes
    @selected = @lakes[0]
    @change = (selected) -> State.setLake selected.name

