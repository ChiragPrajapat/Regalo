<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

</head>
<body>

<br>
<div class="container">
    <img src="<c:url value="/resources/images/logo3.png" />" height="100" width="100"> <h1>Regalo</h1>
    <p><I>Online portal for gifts!</I></p>
  </div>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/Regalo"><span
					class="glyphicon glyphicon-gift"></span> Regalo</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/Regalo"><span
						class="glyphicon glyphicon-home"></span> Home</a></li>


				<!--       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">About us<span class="caret"></span></a> -->
				<!--         <ul class="dropdown-menu"> -->
				<!--           <li><a href="#">Page 1-1</a></li> -->
				<!--           <li><a href="#">Page 1-2</a></li> -->
				<!--           <li><a href="#">Page 1-3</a></li> -->
				<!--         </ul> -->
				<!--       </li> -->


				<li><a href="allproduct">Products</a></li>
				
	<li><a href="addproduct">Add Product</a></li>
			
				<li><a href="aboutus">About Us</a></li>

				<li><a href="contactus">Contact Us</a></li>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><form:form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default"><span
						class="glyphicon glyphicon-search"></span></button>
					</form:form>
				<li><a href="register"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>

</body>
</html>