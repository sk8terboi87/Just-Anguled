@trackr.controller('ChartsController', ($scope) ->
  $scope.piechart = {}
  $scope.linechart = {}

  # PIEchart CHART
  $scope.piechartData= () =>
    piechart = {
      title: 'This is Piechart Chart (duh!)'
      data: [
          region: "Asia"
          val: 4119626293
      ,
          region: "Russia"
          val: 4119626444
      ,
          region: "Africa"
          val: 2012956064
      ]
    }
    $scope.piechart = piechart

  # LINE CHART With Custom Data
  $scope.linechartData = () =>
    linechart = {
      title: 'I am Line Chart ^__^',
      data: [
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
    }
    $scope.linechart = linechart

  $scope.updateData = () ->
    $scope.linechart.title = $scope.title

  # LOAD THE MODULE
  $scope.piechartData()
  $scope.linechartData()
)