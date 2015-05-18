
angular.module 'cards'
.service 'Cards', class Cards

  constructor: ->

    @options =
      chart:
        type: 'discreteBarChart'
        height: 300
        margin :
          top: 20
          right: 0
          bottom: 60
          left: 32
        x: (d) -> d.label
        y: (d) -> d.value
        showValues: true
        valueFormat: (d) -> d3.format(',d')(d)
        transitionDuration: 500
        xAxis:
          rotateLabels: -60
        title:
          enable: true
          text: 'My Chart'
          class: 'h4'

