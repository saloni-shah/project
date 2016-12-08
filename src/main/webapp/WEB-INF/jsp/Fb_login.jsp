<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../../assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<title> Facebook Login</title>
</head>
<body>
	<script src="../../jquery-1.8.3.js">
		
	</script>
	<script src=javascript/jquery-library.js></script>

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
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/Invitar">Invitar</a></li>
				<li><a href="signup">Signup</a></li>
				<li class="active"><a href="/login">Login</a></li>
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

	<div class="col-lg-6 col-lg-offset-3">
<div ng-view id="status">

<!-- 
<md-button class="btn btn-primary"
           style="border-radius: 320px;"
           ng-click="FB.login()" scope="public_profile,contactemail" onlogin="checkLoginState();">
    <span style="padding: 150px; margin:50px"> <h4> Sign in with Facebook </h4></span>
</md-button> -->
    </div>
</div>
<div>          
    <!-- Social Sign In Buttons -->
    <div class="panel panel-default">
        <div class="panel-body">
            <h2><spring:message code="label.social.sign.in.title"/></h2>
            <div class="row social-button-row">
                <div class="col-lg-4">
                    <!-- Add Facebook sign in button -->
                    <a href="webapi/FbResourceInterface/FbLogin"><button class="btn btn-facebook"><i class="icon-facebook">
                    </i> 
                    <spring:message code="label.facebook.sign.in.button"/></button></a>
                </div>
            </div>
           
        </div>
    </div>

<!-- 
    If the user is already authenticated, show a help message instead
    of the login form and social sign in buttons.
-->
//In order to redirect users back to where they have been before logging in
<%-- <f:view>
    <ui:param name="originalURL" value="#{request.requestURI}?#{request.queryString}" />
        
    <f:metadata>
        <f:event rendered="#{empty userSession.profile}" type="preRenderView" listener="#{userSession.setOriginalURL(originalURL)}" />
    </f:metadata>
</f:view> --%>
<div access="isAuthenticated()">
    <p><spring:message code="text.login.page.authenticated.user.help"/></p>
</div>
</div>
</body>
</html>

