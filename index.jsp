<!DOCTYPE html>  
<html lang="en">  
<head>  
  <title class="text-info">This is a Bootstrap example</title>  
    
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
   
</head>  
<body>  
<div width="100%" ng-app="hacktronApp">
<div class="container"  >  
  <h1>Queue Management</h1>  
</div>  
<div ng-controller="queueCtrl">
	<table class="table table-striped">
		<tr><td>Queue Name:</td><td><input type="text" class="form-control" id="queueName"/></td> <td><button id="addqueue" class="btn btn-primary" onclick="addQueue()">Add</button></td></tr>
	</table>
	
		<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Queue Name</th>
      <th scope="col">Queue Size</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  
  
    <tr ng-repeat="queObj in queObjList">
      <th scope="row">1</th>
      <td>{{queObj.queue_id}}</td>
      <td>{{queObj.queue_name}}</td>
      <td>
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Add</button>
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal1">View</button>
</td>


    </tr>
   
  </tbody>
</table>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Message</h4>
        </div>
        <div class="modal-body">
          <textarea class="form-control" rows="5" id="message"></textarea><br/><button id="addMessageBtn" class="btn btn-primary">Submit</button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


<div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Message</h4>
        </div>
        <div class="modal-body">
		
		<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
	<th scope="col"><input type="checkbox"/></th>
      <th scope="col">Message</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
<td><input type="checkbox"/></td>
      <td>Message</td>
      <td><a href="" >delete</a> <a href="" >update</a></td>
</tr>
</tbody>
</table>          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>  
  </div>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
  <script type="text/javascript" src="<%=request.getContextPath();%>/js/hacktron.js"></script> 
	<script>
		$('#wrapper').dialog({
    autoOpen: false,
    title: 'Basic Dialog'
});
$('#opener').click(function() {
    $('#wrapper').dialog('open');
    return false;
});
	</script>
</body>  
</html>  

 