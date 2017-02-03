<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



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
	.backbround {
  background-image: url("assets/img/backgroundimage.jpg"), url("assets/img/backgroundimage.jpg");
  background-color: #cccccc;
  width: 100%;
  min-height: 120px;
  margin:auto;
}
.message {
	margin-bottom: 10px;
}
	
</style>

</head>
<body>
<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-left col=sm-5">

				<li class="active"><a href="/Invitar">Invitar</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Invitation<b class="caret"></b></a>

					<ul class="dropdown-menu">
					   
						<li class="dropdown" ><a href="webapi/TemplateInterface/getTemplates">Birthday</a>

							<ul class="dropdown-menu">
								<li><a href="/templates">For Her</a></li>
								<li class="divider"></li>
								<li><a href="#">For Him</a></li>
								<li class="divider"></li>
								<li><a href="#">For Kids</a></li>
							</ul></li>

						<li class="divider"></li>
						<li><a href="webapi/TemplateInterface/getTemplateso">Occasion</a>
							<ul class="dropdown-menu">
								<li><a href="#">Anniversary</a></li>
								<li class="divider"></li>
								<li><a href="#">Graduation</a></li>
								<li class="divider"></li>
								<li><a href="#">Professional</a></li>

							</ul></li>
						<li class="divider"></li>
						<li><a href="webapi/TemplateInterface/getTemplatesea">Seasonal</a>
							<ul class="dropdown-menu">
								<li><a href="#">Christmas</a></li>
								<li class="divider"></li>
								<li><a href="#">Diwali</a></li>
								<li class="divider"></li>
								<li><a href="#">Easter</a></li>
								<li class="divider"></li>
								<li><a href="#">Halloween</a></li>
							</ul></li>
						<li class="divider"></li>
						<li><a href="webapi/TemplateInterface/getTemplatesfun">Fun Party</a>
							<ul class="dropdown-menu">
								<li><a href="#">Get togather</a></li>
								<li class="divider"></li>
								<li><a href="#">Brunch / Lunch</a></li>
								<li class="divider"></li>
								<li><a href="#">Sports</a></li>
								<li class="divider"></li>
								<li><a href="#">Cocktail</a></li>
							</ul></li>
					</ul></li>
				<li class="dropdown"><a href="webapi/gift.jsp" 
					>Gift</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="webapi/registrationResourceInterface/signup">Signup</a></li>
				<li><a href="webapi/registrationResourceInterface/login">Login</a></li>
				<li><a href="webapi/FbResourceInterface/Fb_Login">Login with Facebook </a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Explore<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Contact us</a></li>
						<li class="divider"></li>
						<li><a href="#">Further Actions</a></li>
					</ul></li>
			</ul>

		</div>
		<!-- /.nav-collapse -->
	</div>	 
  <div class="backbround col-sm-7 verticle-center" align="center">

    <a class="dis" align="center"><h1>"Multiply Hapiness With Invitar"</h1></a>

    <a class="dis" align="center"><h2>Lets Celebrate Special Moments</h2></a>

      </div>
<br>
<br>



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