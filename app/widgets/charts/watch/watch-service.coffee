
angular.module 'widgets'
.service 'Watch', class Watch

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
        title: 'Humidity'
        xAxis:
          rotateLabels: -60

