/**
 * 
 */
var app = angular.module('allProd', []);
app.controller('allProdCntrl', function($scope, $http)
		{
	$http.get("prod").then(function(response)
			{
		$scope.Data = response.data;
		
			});
});