app = angular.module('boiler-app')

app.config(($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider.otherwise("/")

  $stateProvider
    .state('home', {
      url: "/",
      templateUrl: "/templates/home.html"
    })
    .state('info', {
      url: "",
      abstract: true,
      template: "<div class='info-page' data-ui-view></div>"
    })
    .state('info.features', {
      url: "/features"
      templateUrl: "/templates/features.html"
    })
)
