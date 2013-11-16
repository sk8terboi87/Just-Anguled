@chartModule.directive('trackrLine', (dateFilter, $timeout) ->
        restrict: 'E'
        scope:
            title: '=title',
            data: '=data',
        link: (scope, element, attrs) ->

            # For digest to occur
            scope.$watch("title", (title) ->
                chartContainer.dxChart
                    title: title
            )

            chartContainer = element.find('#chartContainer')
            getTitle = () ->
                scope.title

            getData = () ->
                scope.data

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
                dataSource: getData()
                title: getTitle()
        templateUrl: 'views/directives/linechart-directive.html'
    )