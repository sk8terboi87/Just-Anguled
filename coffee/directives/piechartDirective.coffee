@chartModule.directive('trackrPiechart', (dateFilter, $timeout) ->
        restrict: 'E'
        scope:
            title: '=title',
            data: '=data'
        link: (scope, element, attrs) ->
            chartContainer = element.find('#chartContainer')
            chartContainer.dxPieChart
                rotated: true
                pointSelectionMode: "multiple"
                dataSource: scope.data
                title: scope.title
                series: [
                    type: "doughnut"
                    argumentField: "region"
                ]
        templateUrl: 'views/directives/piechart-directive.html'
    )