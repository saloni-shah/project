<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<link href="../../bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="../../datepicker/css/datepicker.css" rel="stylesheet" />
<link href="../../assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.green {
	font-weight: bold;
	color: green;
}

.message {
	margin-bottom: 10px;
}

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
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/Invitar">Invitar</a></li>
				<li class="active"><a href="signup">Signup</a></li>
				<li><a href="login">Login</a></li>
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

	<script src="../../jquery-1.8.3.js">
		
	</script>

	<script src="../../bootstrap/js/bootstrap.js">
		
	</script>

	<script src="../../datepicker/js/bootstrap-datepicker.js">
		
	</script>


	

	<c:if test="${not empty it.message}">
		<div class="green">${it.message}</div>
	</c:if>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form  name="myForm" id="myForm" method="post" action="signup"
							class="bs-example form-horizontal" onSubmit="return validate()">
							<fieldset>
								<legend>Signup Form</legend>

								<div class="form-group">
								<span id="error" style="color:#ff0000"></span>								
								
									<label for="userNameInput" class="col-lg-3 control-label">*User
										Name</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="userName"
											id="userNameInput" placeholder="User Name"
											value="${it.registration.userName}"/>
									</div>
								</div>

							
								<div class="form-group">
								<span id="error1" style="color:#ff0000"></span>
									<label for="passwordInput" class="col-lg-3 control-label">*Password</label>
									<div class="col-lg-9">
										<input type="password" class="form-control" name="password"
											id="passwordInput" placeholder="Password"
											value="${it.registration.password}" />
									</div>
									
								</div>


								<div class="form-group">
									<label for="passwordInput" class="col-lg-3 control-label">*Password</label>
									<div class="col-lg-9">
										<input type="password" class="form-control" name="confirm_password"
											id="confirm_password" placeholder="Confirm Password"
											value="${it.registration.password}" onblur="check_pass()"/>
									</div>
								</div>
								 	
								<div class="form-group">
									<label for="firstNameInput" class="col-lg-3 control-label">First
										Name</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="firstName"
											id="firstNameInput" placeholder="First Name"
											value="${it.registration.firstName}" />
									</div>
								</div>

								<div class="form-group">
									<label for="lastNameInput" class="col-lg-3 control-label">Last
										Name</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="lastName"
											id="lastNameInput" placeholder="Last Name"
											value="${it.registration.lastName}" />
									</div>
								</div>

								

								<div class="form-group">
								<span id="error2" style="color:#ff0000"></span>
									<label for="emailAddressInput" class="col-lg-3 control-label">*Email
										Address</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="emailAddress"
											id="emailAddressInput" placeholder="Email Address"
											value="${it.registration.emailAddress}"  onblur="check_mail()"/>
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Cancel</button>

																			
										<input type="submit" value="Submit" id="submitbtn"
														class="btn btn-primary" data-loading-text="Saving.."
														data-complete-text="Submit Complete!" >
														
														
									

								</div>

							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
    function check_pass(){     	  
    	 var val = document.forms["myForm"]["confirm_password"].value;
    if (document.getElementById('passwordInput').value==document.getElementById('confirm_password').value){
    	document.getElementById("error1").innerHTML="";	 
		}
	else {
		document.getElementById("error1").innerHTML="Password not matching";	
		document.getElementById('passwordInput').value="";
		document.getElementById('confirm_password').value="";
	}
    }
   
    function check_val(){
    	 var x = document.forms["myForm"]["userName"].value;
    	    if (x == null || x == "") {    	       
    	        document.getElementById("error").innerHTML="Enter username";
    	        return false;
    	    }
    	    document.getElementById("error").innerHTML="";
    
    }
    
    function check_mail(){
   	 var x = document.forms["myForm"]["emailAddress"].value;
   	    if (x == null || x == "") {    	       
   	        document.getElementById("error2").innerHTML="Enter mailid";
   	        return false;
   	    }
   	    document.getElementById("error2").innerHTML="";
   
   }
    
    
    function validate()
    {
    	if( document.myForm.userName.value == "" && document.myForm.userName.value == "" && document.myForm.password.value == "")
    		{
    		 document.getElementById("error").innerHTML="Enter username";
    		 document.getElementById("error2").innerHTML="Enter mailid";
    		 document.getElementById("error1").innerHTML="Enter password";
    		 
    		}
    	else{
    		 document.getElementById("error").innerHTML="";
    		 document.getElementById("error2").innerHTML="";
    		 document.getElementById("error1").innerHTML="";
    		 
    		}
    
       if( document.myForm.userName.value == "" )
       {
    	   document.getElementById("error").innerHTML="Enter username";
          document.myForm.userName.focus() ;
          return false;
       }
       else{
    	   document.getElementById("error").innerHTML="";
       }
       if( document.myForm.emailAddress.value == "" )
       {
    	   document.getElementById("error2").innerHTML="Enter mailid";
          document.myForm.emailAddress.focus() ;
          return false;
       }
       else{
    	   document.getElementById("error2").innerHTML="";
       }
             
      
      
       return( true );
    }
   
    </script>

</body>
</html>