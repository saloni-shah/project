<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../../index.jsp" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="../../assets/lib/angular.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="../../assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="../../bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
  
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
.container .jumbotron{
display: none;
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