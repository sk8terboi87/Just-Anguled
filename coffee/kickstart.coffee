@trackr = angular.module("trackr", ['chartModule', 'ngResource'])

@trackr.config(["$routeProvider", ($routeProvider) ->
    $routerprovider = $routeProvider;
    $routeProvider.when("/",
      templateUrl: "views/pages/index.html"
      controller: "PagesController"
    );
    $routeProvider.when("/charts",
      templateUrl: "views/charts/index.html"
      controller: "ChartsController"
    );
    $routeProvider.otherwise(
      redirectTo: "/"
    );
])

@chartModule = angular.module('chartModule', [])