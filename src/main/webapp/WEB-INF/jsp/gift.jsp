<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	.form-control{
		display: inline-block;
	}
	input,textarea {
		width: 40% !important;
		height:25px;
		vertical-align:middle !important;
	}
	label{
		width: 15%;
	}
	.dropdown{
		display: inline-block;
	
	}

	.logo_detail{
	verticle-align:middle;
	max-height:50px;
	max-width: 100px;
	}
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

<script type="text/javascript">	
	window.onresize = window.onload = function () {
	    //if (window.innerWidth > 1536) {
	      var url = document.location.href;
	      var imageName = url.substring(url.indexOf("?img=")+5);
	      var logo = document.getElementById('imageHolder');
	      logo.src = "../../assets/img/"+imageName;
	    //}
	};
	
</script>
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
			<ul class="nav navbar-nav navbar-left">

				<li class="active"><a href="/Invitar">Invitar</a></li>
				<li class="dropdown"><a href="#">Gift<b class="caret"></b></a>
<!-- 
					<ul class="dropdown-menu">
								<li><a href="webapi/gift">For Her</a></li>
								<li class="divider"></li>
								<li><a href="webapi/gift">For Him</a></li>
								<li class="divider"></li>
								<li><a href="webapi/gift">For Kids</a></li>
							</ul></li>
							</ul>
							</div></div> -->
							
	<style>
/* 	.logo_detail{
		horizontal-align:middle;
		max-height:50px;
		max-width: 100px;
		
		} */
.logo_detail {
     display: block;
    margin: auto;
    
    width:304px;
    height:228px;
    
}
		
		</style>
			<div class= "img-responsive">
		<div>	
				<a href="http://www.toysrus.com/shop/index.jsp" target=_blank href="getTemplateDetail?img=toysrus_logo.png"><img src="../../assets/img/toysrus_logo.png" class="img-thumbnail" style= width:128px;height:128px;/></a>
		</div>
		<div class= logo_detail>
				<a href="https://www.amazon.com" target=_blank href="getTemplateDetail?img=Amazon-logo.png"><img src="../../assets/img/Amazon-logo.png" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		<div class= logo_detail>
				<a href="http://www.gap.com/" target=_blank href="getTemplateDetail?img=GAP_logo.jpg"><img src="../../assets/img/GAP_logo.jpg" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		<div class= logo_detail>
				<a href="http://www.macys.com/" target=_blank href="getTemplateDetail?img=macys-logo.png"><img src="../../assets/img/macys-logo.png" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		<div class= logo_detail>
				<a href="https://www.disneystore.com" target=_blank href="getTemplateDetail?img=DISNEY_logo.png"><img src="../../assets/img/DISNEY_logo.png" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		<div class= logo_detail>
				<a href="https://www.cagreatamerica.com/" target=_blank href="getTemplateDetail?img=GREATAMERICA_logo.JPG"><img src="../../assets/img/GREATAMERICA_logo.jpg" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		<div class= logo_detail>
				<a href="http://shivyogglobal.com" target=_blank href="getTemplateDetail?img=Shivyog-logo.jpg"><img src="../../assets/img/Shivyog-logo.jpg" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
				<div class= logo_detail>
				<a href="https://stores.express.com" target=_blank href="getTemplateDetail?img=express_logo.jpg"><img src="../../assets/img/express_logo.jpg" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		</div>
				<div class= logo_detail>
				<a href="http://www.bestbuy.com/" target=_blank href="getTemplateDetail?img=bestbuy_logo.png"><img src="../../assets/img/bestbuy_logo.png" class="img-thumbnail rounded mx-auto d-block"/></a>
		</div>
		
		
		
		</div>	
</div>
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
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
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

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

<div class="slideshow-container">

<div class="mySlides fade">
 <!--  <div class="numbertext">1 / 4</div> -->
  <img src="../../assets/img/gift2.jpg" style="width:100%">
  <div class="text">Gift to your loved one</div>
</div>

<div class="mySlides fade">
 <!--  <div class="numbertext">2 / 4</div> -->
  <img src="../..assets/img/gift.jpg" style="width:100%">
  <div class="text">Life is precious, share moments with Loved one </div>
</div>

<div class="mySlides fade">
 <!--  <div class="numbertext">3 / 4</div> -->
  <img src="../..assets/img/minion.jpg" style="width:100%">
  <div class="text">Share your Happiness </div>
</div>
<div class="mySlides fade">
  <!-- <div class="numbertext">4 / 4</div> -->
  <img src="../../assets/img/Christmas_presents_2416800b.jpg" style="width:100%">
  <div class="text">Its special Moment</div>
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
							


</body>
</html>