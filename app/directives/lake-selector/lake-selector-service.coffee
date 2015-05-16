
angular.module 'ctrlComm'
.service 'Lake', class Lake
  constructor: ->
    @lakes = [
      {name: 'Huron'}
      {name: 'Ontario'}
      {name: 'Michigan'}
      {name: 'Erie'}
      {name: 'Superior'}
    ]

