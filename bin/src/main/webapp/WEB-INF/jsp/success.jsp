<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
<link href="../../assets/css/bootstrap-united.css" rel="stylesheet" />

</head>
<body>
	<script src="../../jquery-1.8.3.js">
		
	</script>

	<script src="../../bootstrap/js/bootstrap.js">
		
	</script>

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
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="#">Invitar</a></li>
				<li class="active"><a href="webapi/TemplateInterface/getMyEvents">My Events</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Invitation<b class="caret"></b></a>

					<ul class="dropdown-menu">
						<li class="dropdown" ><a href="getTemplates">Birthday</a>

							<ul class="dropdown-menu">
								<li><a href="/templates">For Her</a></li>
								<li class="divider"></li>
								<li><a href="#">For Him</a></li>
								<li class="divider"></li>
								<li><a href="#">For Kids</a></li>
							</ul></li>

						<li class="divider"></li>
						<li><a href="#">Occassion</a>
							<ul class="dropdown-menu">
								<li><a href="#">Anniversary</a></li>
								<li class="divider"></li>
								<li><a href="#">Graduation</a></li>
								<li class="divider"></li>
								<li><a href="#">Professional</a></li>

							</ul></li>
						<li class="divider"></li>
						<li><a href="#">Seasonal</a>
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
						<li><a href="#">Fun Party</a>
							<ul class="dropdown-menu">
								<li><a href="#">Get together</a></li>
								<li class="divider"></li>
								<li><a href="#">Brunch / Lunch</a></li>
								<li class="divider"></li>
								<li><a href="#">Sports</a></li>
								<li class="divider"></li>
								<li><a href="#">Cocktail</a></li>
							</ul></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Gift<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">For Her</a></li>
						<li class="divider"></li>
						<li><a href="#">For Him</a></li>
						<li class="divider"></li>
						<li><a href="#">For Kids</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="signup">Signup</a></li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><%= session.getAttribute("userName")%><b class="caret"></b></a>
					<ul class="dropdown-menu">				
				
						<li><a href="#">Contacts</a></li>
						<li class="divider"></li>
						<li><a href="#">Sign out</a></li>
						<li class="divider"></li>
					</ul>
				</li>
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
	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>"Multiply Hapiness With Invitar"</h1>
 				<h2>Lets Celebrate Special Moments</h2>
				
				<!-- 			</div>
			<a class="btn btn-primary" href="webapi/registrationResourceInterface/signup">Signup
				 </a> <a class="btn btn-primary" href="webapi/registrationResourceInterface/login">Login
				 </a>
		</div>
 -->
		</div>
  		</div>		  	
  		</div>

	 	<!-- <div class="panel-primary panel-heading">
 		<img alt="Invitar" src="halloween.jpg"/>
 		</div>-->
</body>
</html>