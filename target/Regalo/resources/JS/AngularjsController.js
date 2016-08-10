var app = angular.module('myApp', []);
app.controller("myCtrl", function($scope, $http) {
    $http.get("data")
    .then(function(response) {
        $scope.Data = response.data;
    });
});