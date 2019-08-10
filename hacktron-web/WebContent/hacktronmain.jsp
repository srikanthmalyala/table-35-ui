<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
    <script type="text/javascript"  src="https://code.jquery.com/jquery-3.4.1.js"></script> 
</head>
<!DOCTYPE html>
<html lang="en-US">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<body>




<div ng-app="hacktronApp">
  <p>Name : <input type="text" ng-model="name" ng-controller="queueCtrl" ng-click="addQueue()"></p>
  <h1>Hello {{name}}</h1>
</div>

<script>
var hacktronApp = angular.module("hacktronApp", []);
hacktronApp.controller('queueCtrl', function($scope, $http) {
	
	$scope.addQueue=function($scope){
		
	$http.get("http://localhost:8080/hacktron/hello")
	  .then(function(response) {
		  alert( response.data.message);
	
	  });
	};
	$scope.saveQueue=function($scope){
	$http.post("http://localhost:8080/hacktron/hello",JSON.stringify(data))
	  .then(function(response) {
		  alert( response.data.message);
	
	  });
	};
	
	$scope.listQueue=function($scope){
		
		$http.get("http://localhost:8080/hacktron/hello")
		  .then(function(response) {
			  alert( response.data.message);
		
		  });
		};
		
		$scope.deleteQueue=function($scope){
			
			$http.get("http://localhost:8080/hacktron/hello")
			  .then(function(response) {
				  alert( response.data.message);
			
			  });
			};
			
			$scope.getQueue=function($scope){
				
				$http.get("http://localhost:8080/hacktron/hello")
				  .then(function(response) {
					  alert( response.data.message);
				
				  });
				};
});
hacktronApp.controller('messageCtrl', function($scope, $http) {
	
	$scope.addMessage=function($scope){
		
	$http.get("http://localhost:8080/hacktron/hello")
	  .then(function(response) {
		  alert( response.data.message);
	
	  });
	};
	
	$scope.listMessage=function($scope){
		
		$http.get("http://localhost:8080/hacktron/hello")
		  .then(function(response) {
			  alert( response.data.message);
		
		  });
		};
		
		$scope.saveMessage=function($scope){
			
			
			$http.post("http://localhost:8080/hacktron/hello",JSON.stringify(data))
			  .then(function(response) {
				  alert( response.data.message);
			
			  });
			};
		
		$scope.deleteMessage=function($scope){
			
			$http.get("http://localhost:8080/hacktron/hello")
			  .then(function(response) {
				  alert( response.data.message);
			
			  });
			};
			
			$scope.getMessage=function($scope){
				
				$http.get("http://localhost:8080/hacktron/hello")
				  .then(function(response) {
					  alert( response.data.message);
				
				  });
				};
});


</script>


</html>

