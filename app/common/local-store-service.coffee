
angular.module 'common'
.service 'LocalStore', class LocalStore

  constructor: ($window) ->

    store = $window.localStorage

    @set: (key, val) -> store?.setItem key, angular.toJson val

    @get: (key) -> angular.fromJson store?.getItem key

    @clear: -> store.clear()

