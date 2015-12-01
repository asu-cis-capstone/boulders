var app = angular.module('myApp', []);


app.controller('myController', function($scope, $http) {
	$http.get('http://beer2-bouldersapp.rhcloud.com/api/beers?ontap=true').success(function (response){
	$scope.beerList = response;});
	
	$scope.setBeer = function(beer){
		window.sessionStorage.setItem("beerObj", JSON.stringify(beer));
    }; 
	
	$scope.getBeer = function(){
		var data = window.sessionStorage.getItem("beerObj");
		$scope.beer = JSON.parse(data);
	}
});

app.controller('beerController', function($scope, $http) {
	
	var data = window.sessionStorage.getItem("beerObj");
	$scope.beer = JSON.parse(data);
	
});

