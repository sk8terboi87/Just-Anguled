@chartModule.directive('trackrNotification', () ->
    restrict: 'E'
    scope:
        uuid: '=uuid',
        message: '=message',
        type: '=type'
        timeout: '=timeout'
    link: (scope, element, attrs) ->

        notifyContainer = element.find('#notyContainer').html()

        generate = (text, type, timeout) ->
            noty
                text: type
                type: type
                template: notifyContainer
                timeout: timeout
                dismissQueue: true
                layout: 'bottomRight'
                theme: 'defaultTheme'

        scope.$watch('uuid', () ->
            unless scope.type
                scope.type = 'info'

            unless scope.timeout
                scope.timeout = 2000

            if scope.message
                generate(scope.message, scope.type, scope.timeout)
        )


    templateUrl: 'views/directives/notification-directive.html'

)