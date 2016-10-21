<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="../../assets/lib/angular.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Invitar</title>
<style type="text/css">
	img{
		width:400px;
		height:170px;
		margin-left: 30px;
	}
	.green {
	font-weight: bold;
	text-color: green;
}

.message {
	margin-bottom: 10px;
}
	
</style>
<c:if test="${not empty it.message}">
		<div class="green">${it.message}</div>
	</c:if>
</head>
<body>
<br>
<br>
<div><a href="getTemplateDetail?img=birthday1.jpg"><img src="../../assets/img/birthday1.jpg" /></a>
<a href="getTemplateDetail?img=birthday3.jpg"><img src="../../assets/img/birthday3.jpg"/></a>
<a href="getTemplateDetail?img=birthday4.jpg"><img src="../../assets/img/birthday4.jpg"/></a>
</div>
<br>
<br>
<br>
<div><a href="getTemplateDetail?img=birthday5.jpg"><img src="../../assets/img/birthday5.jpg" /></a>
<a href="getTemplateDetail?img=birthday6.jpg"><img src="../../assets/img/birthday6.jpg"/></a>
<a href="getTemplateDetail?img=birthday7.jpg"><img src="../../assets/img/birthday7.jpg"/></a>
</div>
<br>
<br>
<br>
<div>
<a href="getTemplateDetail?img=birthday8.jpg"><img src="../../assets/img/birthday8.jpg"/></a>
<a href="getTemplateDetail?img=birthday10.jpg"><img src="../../assets/img/birthday10.jpg"/></a>




</div>


</body>
</html>