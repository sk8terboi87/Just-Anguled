@chartModule.directive('trackrTimeline', (dateFilter, $timeout) ->
        restrict: 'E'
        scope:
            title: '=title',
            data: '=data'
        link: (scope, element, attrs) ->
            chartContainer = element.find('#chartContainer')
            chartContainer.dxChart
                rotated: true
                series: [
                    valueField: "gold"
                    name: "Gold Medals"
                    color: "#ffd700"
                  ,
                    valueField: "silver"
                    name: "Silver Medals"
                    color: "#c0c0c0"
                  ,
                    valueField: "bronze"
                    name: "Bronze Medals"
                    color: "#cd7f32"
                ]
                commonSeriesSettings:
                    argumentField: "country"
                    type: "stackedbar"
                    selectionStyle:
                        hatching: "left"
                dataSource: scope.data
                title: scope.title
        templateUrl: 'views/directives/timeline-directive.html'
    )