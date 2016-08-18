<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Regalo</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="<spring:url value="/resources/css/bootstrap.css" />" rel="stylesheet">


<script type="text/javascript" src="<spring:url value="/resources/js/html5shiv.min.js" />" /></script>
<script type="text/javascript" src="<spring:url value="/resources/js/respond.min.js" />" /></script>
<script type="text/javascript" src="<spring:url value="/resources/jquery/jquery-2.2.4.min.js"/>" /></script>
<script type="text/javascript" src="<spring:url value="/resources/js/bootstrap.min.js" />" /></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>

<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css"> -->
<!-- <script type="" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<style>
    
body {
    font-family: Georgia, Times, serif , Fantasy;
    font-size: 160%;
    color: Red;
    background-color: 
/*     background-image: url("C:\Users\Dell\Desktop\gifts images\background image.jpg"); */
}
h1 {
    font-family: Helvetica, Arial
}
</style>
</head>
<body>

<br>
<div style= "width:100% height:20%">
<table>
<tr>
<td>
    <img src="<c:url value="/resources/images/logo3.png" />" height="100" width="100">
    </td>
    <td><h1><b>Regalo</b></h1>
    <p><I>Online portal for gifts!</I></p></td>
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


				<!--       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">About us<span class="caret"></span></a> -->
				<!--         <ul class="dropdown-menu"> -->
				<!--           <li><a href="#">Page 1-1</a></li> -->
				<!--           <li><a href="#">Page 1-2</a></li> -->
				<!--           <li><a href="#">Page 1-3</a></li> -->
				<!--         </ul> -->
				<!--       </li> -->


				<li><a href="disp?id=4">Products</a></li>
<!-- <sec:authorize access="hasRole('ROLE_ADMIN')">				 -->
	<li><a href="addproduct">Add Product</a></li>
			<li><a href="${pageContext.request.contextPath}/supdisp">Suppliers</a></li>
			<li><a href="catdisp">Category</a></li>
<!-- 			</sec:authorize> -->
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
				<li><a href="addUser"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>

</body>


</html>