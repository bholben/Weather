
angular.module 'data'
.service 'State', class State
  constructor: (DataCache) ->
    @lake = null
    @setLake = (p) ->
      @lake = p
      DataCache.update lake: p

