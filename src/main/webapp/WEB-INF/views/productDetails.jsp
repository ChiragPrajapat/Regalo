<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
</head>
<body> 
<div class="container" ng-app="myApp" ng-controller="myCtrl">
<%@ include file="header.jsp" %>

<div  ng-repeat="product in Data | filter: { product_id: '${param.id}'}" >
</center>
<table class="table table-striped">
<tr>
	<th>Name</th>
	<td>{{product.product_name}}</td>
</tr>
<tr>
	<th>Available Supplier</th>
	<td>{{product.product_supplier}}</td>
</tr>
<tr>
	<th>Price</th>
	<td>{{product.product_price}}</td>
</tr>
<tr>
	<th>Details</th>
	<td>{{product.product_description}}</td>
</tr>
<tr>
	<th>Category</th>
	<td>{{product.product_category}}</td>
</tr>

</table>
</div>


</body>
</html>