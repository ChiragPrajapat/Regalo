<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Regalo</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<spring:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
<script type="text/javascript"
	src="<spring:url value="resources/js/html5shiv.min.js" />" /></script>
<script type="text/javascript"
	src="<spring:url value="resources/js/respond.min.js" />" /></script>
<script type="text/javascript"
	src="<spring:url value="resources/jquery/jquery-2.2.4.min.js"/>" /></script>
<script type="text/javascript"
	src="<spring:url value="resources/js/bootstrap.min.js" />" /></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>

<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css"> -->
<!-- <script type="" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<style>
body {
	font-family: Georgia, Times, serif, Fantasy;
	font-size: 160%;
	color: maroon;
	/*     background-color:golden  */
	background-color:
		/*     background-image: url("C:\Users\Dell\Desktop\gifts images\background image.jpg"); */
}

h1 {
	font-family: Helvetica, Arial, Prida02Calt;
}
</style>
</head>
<body>
	<br>
	<div style="width: 90% height:20%">
		<table>
			<tr>
				<td><img
					src="<c:url value="/resources/images/gold-christmas-bow.png" />"
					height="150" width="211"></td>
				<td>
					<div class="container">
						<div class="page-header">
							<h1>Regalo</h1>
							<p>
								<I>Good for you.</I>
							</p>
						</div>
					</div>
				</td>
		</table>
	</div>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/Regalo"><span
					class="glyphicon glyphicon-gift"></span> Regalo</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/Regalo"><span
						class="glyphicon glyphicon-home"></span> Home</a></li>
				<li><a href="${pageContext.request.contextPath}/disp?id=4">Products</a></li>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="addproduct">Add Product</a></li>
				</sec:authorize>
				<li><a href="${pageContext.request.contextPath}/supdisp">Suppliers</a></li>
				<li><a href="${pageContext.request.contextPath}/catdisp">Category</a></li>
				<li><a href="${pageContext.request.contextPath}/aboutus">About
						Us</a></li>
				<li><a href="${pageContext.request.contextPath}/contactus">Contact
						Us</a></li>
						
			</ul>
			<ul class="nav navbar-nav navbar-right">
					 <li><sec:authorize access="hasRole('ROLE_USER')">
						<a href="${pageContext.request.contextPath}/viewcart"><span
								class="glyphicon glyphicon-shopping-cart"></span> Cart</a>
					</sec:authorize></li>
					<sec:authorize access="isAnonymous()">
						<li><a href="${pageContext.request.contextPath}/register"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="${pageContext.request.contextPath}/login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</sec:authorize>
				<li><sec:authorize access="isAuthenticated()">
						<li><a href='<c:url value="/logout" />'> <span
								class="glyphicon glyphicon-log-out"></span> Logout
						</a></li>
					</sec:authorize>
			</ul>
		</div>
	</nav>

</body>


</html>