@trackr.controller('NotificationController', ($scope) ->

    $scope.success = () =>
        notifyData = {}
        notifyData.message = 'Yay'
        notifyData.type = 'success'
        $scope.$emit('notifyEvent', notifyData)

    $scope.info = () =>
        notifyData = {}
        notifyData.message = 'Hey there!!!'
        notifyData.type = 'information'
        $scope.$emit('notifyEvent', notifyData)

    $scope.warning = () =>
        notifyData = {}
        notifyData.message = 'You been warned!!! >_<'
        notifyData.type = 'warning'
        $scope.$emit('notifyEvent', notifyData)

    $scope.notification = () =>
        notifyData = {}
        notifyData.message = 'Plain old notification!!!'
        notifyData.type = 'notification'
        $scope.$emit('notifyEvent', notifyData)

    $scope.failure = () =>
        notifyData = {}
        notifyData.message = 'BOOOO!!!'
        notifyData.type = 'error'
        $scope.$emit('notifyEvent', notifyData)
)