<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../../index.jsp" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.List"%>
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
h1{
margin-left: 180px;
}

.message {
	margin-bottom: 10px;
}
	
</style>

</head>
<body>
<h1 align="left">My Events</h1>
<c:forEach var="event" items="${it.events}" varStatus="index">
	<div class="container">
	<br>
	<div>
				<h2><c:out value="${event.eventTitle}"/></h2>
	</div>
	<div>
                <label>Event Type: <c:out value="${event.eventType}"/></label>
     </div>
     <div>
                <label>Event Address: <c:out value="${event.address}"/></label>
     </div>
     <div>
                <label>Location: <c:out value="${event.location}"/></label>
     </div>
     <div>
                <label>State: <c:out value="${event.state}"/></label>
   	 </div>
   	 <div>
   	            <label>Time: <c:out value="${event.startTime}"/></label>  
      </div>
      <div>          <label>Message: <c:out value="${event.message}"/></label>
        </div>
        <!--<form id="myForm" method="get" action="../../socialauth?id=googleplus">
        	<button type="submit" class="btn btn-default">Add Guests</button>
        </form>-->
        <a href="../../socialauth?id=googleplus">Add Guest</a>
        </div>    
</c:forEach>


<br>
<br>



</body>
</html>