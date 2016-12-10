
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../../index.jsp" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.List"%>

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
<!-- 
	<div class="col-lg-6 col-lg-offset-3">
<div ng-view id="status">


<md-button class="btn btn-primary"
           style="border-radius: 320px;"
           ng-click="FB.login()" scope="public_profile,contactemail" onlogin="checkLoginState();">
    <span style="padding: 150px; margin:50px"> <h4> Sign in with Facebook </h4></span>
</md-button>
    </div>
</div> -->
<div>          
    <!-- Social Sign In Buttons -->
 
          
            <div class="class="col-lg-9">
                <div class="col-lg-4">
                    <!-- Add Facebook sign in button -->
                    <a href="webapi/FbResourceInterface/FbLogin"><button class="btn btn-facebook"><i class="icon-facebook"
                    value="${it.FbLogin}" onblur="statusChangeCallback()" onblur="Fb.Login()">
                    </i> 
                    Facebook Login</button></a>
                </div>
            </div>
           
        </div>

<script>

//current status of user as 
function statusChangeCallback(response) {
	 	console.log('statusChangeCallback');
 	console.log(response);
 	if(response.status === 'connected'){
 		testAPI();
 		}else if(response.status === 'not_authorised' ){
 			document.getElementById('status').innerHTML= 'please login via login @ invitar'
 		}else {
 			document.getElementById('status').innerHTML ='please login via Facebook'
 		}
 	}
 	
function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

/* appId      : '{152190004803645}',
app_secret : '{64c94bd02180b0ade85889b44b2ba7c4}', */
/*  		appId      : '{1762098997448509}',
app_secret : '{884004fae255655a82d4345577397593}', */ 
  window.fbAsyncInit = function() {
  FB.init({
	//  app id register @ facebook app login
    appId      : '{1762098997448509}',
	app_secret : '{884004fae255655a82d4345577397593}',
//    			
    cookie     : true,                        
    xfbml      : true, 
    version    : 'v2.8' // graph api version 2.8
  });
  
  FB.getLoginStatus(function(response) {
	    statusChangeCallback(response);
	  });


	  };
  // Loading SDK
  (function(doc, scr, id) {
var js, fjs = doc.getElementsByTagName(scr)[0];
if (doc.getElementById(id)) return;
js = doc.createElement(scr); 
js.id = id;
js.src = "//connect.facebook.net/en_US/sdk.js";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));


//  Graph API after login is successful

function testAPI() {
console.log('Welcome!  Fetching your information.... ');
FB.api('/me', function(response) {
console.log('Successful login for: ' + response.name);
document.getElementById('status').innerHTML =
'Thanks for logging in, ' + response.name + '!';
});
}
FB.login(function(response) {
if (response.authResponse) {
 console.log('Welcome!  Fetching your information.... ');
 FB.api('/me', function(response) {
   console.log('Good to see you, ' + response.name + '.');
 });
} else {
 console.log('User cancelled login or did not fully authorize.');
}
});
FB.login(function(response) {
// handle the response
}, {
scope: 'id,firstName,lastName,contactEmail', 
return_scopes: true
});
// access token from browser 
FB.getLoginStatus(function(response){
if(response.status ==='connected'){
  console.log(response.authResponse.accessToken);
}
});
// call api which will return requested data(user_id,name,email)
FB.api('/me', function(response) {
console.log(JSON.stringify(response));
});


</script>
</body>
</html>

