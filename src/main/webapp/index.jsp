

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />


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
						<li><a href="webapi/TemplateInterface/getTemplates">Occasion</a>
							<ul class="dropdown-menu">
								<li><a href="#">Anniversary</a></li>
								<li class="divider"></li>
								<li><a href="#">Graduation</a></li>
								<li class="divider"></li>
								<li><a href="#">Professional</a></li>

							</ul></li>
						<li class="divider"></li>
						<li><a href="webapi/TemplateInterface/getTemplates">Seasonal</a>
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
						<li><a href="webapi/TemplateInterface/getTemplates">Fun Party</a>
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
				<li class="dropdown"><a href="/gift.jsp" 
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
<!-- 	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>"Multiply Hapiness With Invitar"</h1>
 				<h2>Lets Celebrate Special Moments</h2>

		</div>
  		</div>		  	
  		</div> -->
 		
	<script src="jquery-1.8.3.js">
		
	</script>

			<script src="bootstrap/js/bootstrap.min.js">
	</script>
		
	
  
  <!-- //  Slider Image:
 -->
	
<style>
	.backbround {
  background-image: url("assets/img/backgroundimage.jpg"), url("assets/img/backgroundimage.jpg");
  background-color: #cccccc;
  width: 100%;
  min-height: 120px;
  margin:auto;
}

* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 920px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 25px;
  padding: 8px 12px;
  position: absolute;
  bottom: 20px;
  width: 100%;
  text-align: center;
}

/* Number text (1/4 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.16s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2.5s;
  animation-name: fade;
  animation-duration: 2.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
.social-icon{
  display: inline-block;
  width: auto;
  height: 42px;
  position: center;
  overflow: hidden;
  border-radius: 120%;
  line-height: 42px;
  margin: 0 4px;
  box-shadow: 0 4px 25px;


}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 15px}
}
</style>

<div class="slideshow-container">

<div class="mySlides fade">
 <!--  <div class="numbertext">1 / 4</div> -->
  <img src="assets/img/christmas.jpg" style="width:100%">
  <div class="text">Mery Christmas</div>
</div>

<div class="mySlides fade">
 <!--  <div class="numbertext">2 / 4</div> -->
  <img src="assets/img/gift.jpg" style="width:100%">
  <div class="text">Do not Missed to send Gift</div>
</div>

<div class="mySlides fade">
 <!--  <div class="numbertext">3 / 4</div> -->
  <img src="assets/img/Merry-Christmas-GIF.gif" style="width:100%">
  <div class="text">Merry Christmas</div>
</div>
<div class="mySlides fade">
  <!-- <div class="numbertext">4 / 4</div> -->
  <img src="assets/img/Christmas2.jpg" style="width:100%">
  <div class="text">Its Christmas</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2500); // Change image every 2.5 seconds
}
</script>
<div>
	<footer class=" navbar-fixed-bottom panel-footer navbar navbar-default 
	navbar-collapse collapse navbar-responsive-collapse ">
      <div class="row"></div>
      <div  class="col-sm-4">
        <h4 align="left">Address</h4>
        <a>Invitar.com </a><br>
        <a> Fremont,CA </a><a> USA </a> 
      </div>
      <div align="center" class="col-sm-4">
        <h4 align="center">Contact us</h4>     
        </div>
      <div align="center" class="col-sm-4">
        <h4 align="right">Follow us</h4>
        <div align="right" class="social-icon">
        <a href="https://www.facebook.com/Invitarcom-615364831968883" align="right">@Facebook</a>
        </div>
      </div>
      </footer>
      </div>
      <br>
      <br>
        <div class="navbar-fixed-bottom" align="center">
    <a>Copyright © Invitar.com 2016 All Rights Reserved.</a>
  </div>

</body>
</html>