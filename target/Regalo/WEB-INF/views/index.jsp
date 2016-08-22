<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Regalo</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: inherit;
}
</style>
</head>

<body>


<div class="container" ng-app="myapp" ng-controller="myctrl">
	
	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">



				<div class="item active">
					<img src="<c:url value="/resources/images/christmas_gift.jpg" />"
						alt="" height="345" />

					<div class="carousel-caption">
						<h3></h3>

					</div>
				</div>
				<div class="item ">
					<img
						src="<c:url value="/resources/images/Merry-Christmas-Gift.jpg" />"
						alt="" height="345" />
					<div class="carousel-caption">
						<h3></h3>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/cash-wedding-gifts.jpg" />"
						alt="" height="345" />
					<div class="carousel-caption">
						<h3></h3>
					</div>
				</div>

				<div class="item">
					<img
						src="<c:url value="/resources/images/birthday_gift_with_lable.jpg" />"
						alt="" height="345" />
					<div class="carousel-caption">
						<h3></h3>
					</div>
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

<br>
	
	<div class="container">
	<h1>_________________________________________________________</h1>
		<h3><u>Gifts by categories</u></h3>

	</div>
<br>
		<div class="container">
			<div class="col-sm-4" style="">
				<a href="disp?id=1"> <img
					src="<c:url value="/resources/images/Birthday-Gifts-2.jpg" />"
					class="img-circle" alt="birthday_gift" width="304" height="236"></a>
				<h2>Birthday Gifts</h2>
			</div>

			<div class="col-sm-4" style="">
				<a href="disp?id=2"> <img
					src="<c:url value="/resources/images/CarMarriedCouple.jpg" />"
					class="img-circle" alt="Wedding_gift" width="304" height="236"></a>
				<h2>Wedding Gifts</h2>
			</div>

			<div class="col-sm-4" style="">

				<a href="disp?id=3"> <img
					src="<c:url value="/resources/images/Christmas-Tree-With-Presents.png" />"
					class="img-circle" alt="Cinque Terre" width="304" height="236"></a>
				<h2>Christmas Gifts</h2>
			</div>
		</div>
		<h1>__________________________________________________________</h1>
	</div>
	<br>
	<br>
	
<%@ include file="footer.jsp" %>	
</body>
</html>