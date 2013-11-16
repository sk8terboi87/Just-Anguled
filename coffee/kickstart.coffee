@trackr = angular.module('trackr', ['chartModule', 'ngResource'])

@trackr.controller('wrapperController', ($scope) ->
    $scope.notify = {}

    #TODO: Write service for below
    $scope.setNotifyData = (message, type) =>
        notify = {
          message: message
          type: type
          uuid: Math.random()
        }
        $scope.notify = notify

    $scope.$on('notifyEvent', (event, data) ->
        $scope.setNotifyData(data.message, data.type)
    )

)

@trackr.config(['$routeProvider', ($routeProvider) ->
    $routerprovider = $routeProvider
    $routeProvider.when('/',
      templateUrl: 'views/pages/index.html'
      controller: 'PagesController'
    )
    $routeProvider.when('/charts',
      templateUrl: 'views/charts/index.html'
      controller: 'ChartsController'
    )
    $routeProvider.when('/notify',
      templateUrl: 'views/notify/index.html'
      controller: 'NotificationController'
    )
    $routeProvider.otherwise(
      redirectTo: '/'
    )
])


@chartModule = angular.module('chartModule', [])
@notificationModule = angular.module('notificationModule', [])