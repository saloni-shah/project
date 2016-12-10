<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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