
angular.module 'cards'
.service 'BarCharts', class BarCharts

  constructor: ->

    @options =
      chart:
        type: 'discreteBarChart'
        height: 320
        margin :
          top: 20
          right: 0
          bottom: 60
          left: 42
        x: (d) -> d.label
        y: (d) -> d.value
        showValues: true
        valueFormat: (d) -> d3.format(',d')(d)
        transitionDuration: 500
        xAxis:
          rotateLabels: -60

