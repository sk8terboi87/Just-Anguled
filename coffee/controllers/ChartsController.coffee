@trackr.controller('ChartsController', ($scope) ->
    $scope.pie = {}
    $scope.pie.title = 'This is Pie Chart'
    $scope.pie.data = [
        region: "Asia"
        val: 4119626293
    ,
        region: "Africa"
        val: 1012956064
    ]

    $scope.timeline = {}
    $scope.timeline.title = 'And, This is a Timeline Chart'
    $scope.timeline.data = [
      country: "Russia"
      gold: 23
      silver: 21
      bronze: 28
    ,
      country: "Britain"
      gold: 19
      silver: 13
      bronze: 15
    ,
      country: "Australia"
      gold: 14
      silver: 15
      bronze: 17
    ,
      country: "Germany"
      gold: 16
      silver: 10
      bronze: 15
    ]
)