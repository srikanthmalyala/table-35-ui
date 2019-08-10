
var hacktronApp = angular.module("hacktronApp", []);
hacktronApp.controller('queueCtrl', function($scope, $http) {
	$scope.queObjList={};
	
	$scope.addQueue=function(){
		$scope.queueName="";
		if($scope.queueName!=""){
		$http.post("http://localhost:8080/hacktron/hello",JSON.stringify(data))
		  .then(function(response) {
			  $scope.queObjList=response;
		
		  });
	}else{
		alert("Please add the queue name");
	}
	};
	
	
	$scope.listQueue=function(){
		
		$http.get("http://localhost:8080/hacktron/hello")
		  .then(function(response) {
			  $scope.queObjList=response;
		
		  });
		};
		
		$scope.deleteQueue=function(){
			
			$http.get("http://localhost:8080/hacktron/hello")
			  .then(function(response) {
				  $scope.queObjList=response;
			
			  });
			};
			
			$scope.getQueue=function(){
				
				$http.get("http://localhost:8080/hacktron/hello")
				  .then(function(response) {
					  $scope.queObjList=response;
				
				  });
				};
});
hacktronApp.controller('messageCtrl', function($scope, $http) {
	$scope.messageObjList={};
	$scope.addMessage=function(){
		
	$http.get("http://localhost:8080/hacktron/hello")
	  .then(function(response) {
		  $scope.messageObjList(response);
	
	  });
	};
	
	$scope.listMessage=function(){
		
		$http.get("http://localhost:8080/hacktron/hello")
		  .then(function(response) {
			  $scope.messageObjList(response);
		
		  });
		};
		
		$scope.saveMessage=function(){
			
			
			$http.post("http://localhost:8080/hacktron/hello",JSON.stringify(data))
			  .then(function(response) {
				  $scope.messageObjList(response);
			
			  });
			};
		
		$scope.deleteMessage=function(){
			
			$http.get("http://localhost:8080/hacktron/hello")
			  .then(function(response) {
				  $scope.messageObjList();
			
			  });
			};
			
			$scope.getMessage=function(){
				
				$http.get("http://localhost:8080/hacktron/hello")
				  .then(function(response) {
					  $scope.messageObjList(response);
				
				  });
				};
});

