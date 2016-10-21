<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="../../assets/lib/angular.min.js"></script>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Birthday For Her</title>
<style type="text/css">
	.form-control{
		display: inline-block;
	}
	input,textarea {
		width: 40% !important;
		height:25px;
		vertical-align:middle !important;
	}
	label{
		width: 15%;
	}
	.dropdown{
		display: inline-block;
	
	}
	table {
		background-repeat:no-repeat;
	}
</style>
<script type="text/javascript">	
	window.onresize = window.onload = function () {
	    //if (window.innerWidth > 1536) {
	      var url = document.location.href;
	      var imageName = url.substring(url.indexOf("?img=")+5);
	      var logo = document.getElementById('imageHolder');
	      logo.src = "../../assets/img/"+imageName;
	    //}
	};
	
</script>
</head>
<body data-root="${rootContext}">
<div ng-app="">
	<!-- <img src="../../assets/img/images (2).jpg" width="1350px" height="400px" >-->
		<img id="imageHolder" width="1350px" height="400px" >
		<table border="5" align="center">
		<tr>
		<td>
		<div style="position:absolute; top:130px; left:400px; width:200px; height:25px">
		<CENTER><FONT SIZE="+2" COLOR="blue">Location:{{location}}</FONT></CENTER>
		
		</div>
		</td>
		<td>
		<div style="position:absolute; top:130px; left:700px; width:200px; height:25px">
		<RIGHT><FONT SIZE="+2" COLOR="blue">Event:{{eventTitle}}</FONT></RIGHT>
		</div>
		</td>
		<td>
		<div style="position:absolute; top:250px; left:400px; width:200px; height:25px">
		<CENTER><FONT SIZE="+2" COLOR="blue">Host:{{eventHost}}</FONT></CENTER>
		
		</div>
		</td>
		<td>
		<div style="position:absolute; top:250px; left:700px; width:200px; height:25px">
		<CENTER><FONT SIZE="+2" COLOR="blue">When:{{startTime}}</FONT></CENTER>
		
		</div>
		</td>
		</tr>
		</table>
	</img>

<div class="container">
  <h2>Enter Details</h2>
  <form id="myForm" method="post" action="saveEvent">
    <div class="form-group">
      <label for="eventTitle">*Event Title:</label>
      <input type="text" required ng-model="eventTitle" class="form-control" name="eventTitle" id="eventTitle" placeholder="Enter Event Title">
    </div>
    <div class="form-group">
      <label for="eventType">*Event Type:</label>
      <input type="text" required class="form-control" name="eventType" id="eventType" value="Birthday">
      <!-- <div class="dropdown">
		    <button class="btn btn-default dropdown-toggle" type="button" name="eventType" id="eventType" data-toggle="dropdown">Select One
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu" role="type" aria-labelledby="eventType">
		      <li role="eventType">Birthday</li>
		      <li role="eventType">Wedding</li>
		      <li role="eventType">Anniversary</li>
		    </ul>
	   </div>-->
    </div>
    <div class="form-group">
      <label for="eventType">*Host:</label>
      <input type="text" required ng-model="eventHost" class="form-control" name="eventHost" id="eventHost" placeholder="Enter Host">
    </div>
    <div class="form-group">
      <label for="location">Location:</label>
      <input type="text" ng-model="location" class="form-control" name="location" id="location" placeholder="Enter Location">
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" class="form-control" name="address" id="address" placeholder="Enter Address">
    </div>
    <div class="form-group">
      <label for="city">City:</label>
      <input type="text" class="form-control" id="city" name="city" placeholder="Enter City">
    </div>
    <div class="form-group">
      <label for="state">State:</label>
      <input type="text" class="form-control" name="state" id="state" placeholder="Enter State">
    </div>
    <div class="form-group">
      <label for="startTime">*Event Date:</label>
      <input type="datetime-local" ng-model="startTime"  required class="form-control" name="startTime" id="startTime">
    </div>
    <div class="form-group">
      <label for="message">*Message:</label>
      <textarea class="form-control" required rows="5" name="message" id="message"></textarea>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  
</div>
</div>
</body>
</html>