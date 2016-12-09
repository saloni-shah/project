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
<title>Send your Invitation</title>
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
						<form:form  name="myForm" id="myForm" method="post" action="send"
							class="bs-example form-horizontal" onSubmit="return validate()">
							<fieldset>
								<legend>Signup Form</legend>

								<div class="form-group">
								<span id="error" style="color:#ff0000"></span>								
								
									<label for="userNameInput" class="col-lg-3 control-label">*Mail Id
										</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="mailId"
											id="mailId" placeholder="Mail Id"
											value="${it.registration.userName}"/>
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
   
    
    
    </script>

</body>
</html>