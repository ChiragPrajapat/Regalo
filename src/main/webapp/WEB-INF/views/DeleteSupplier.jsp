<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
<body>
<div class="container">
<%@ include file="header.jsp" %>
 <h3>Are you sure , you want to delete ?</h3>
<div class="row">
<div class="col-sm-6">
<form action="deleteSupplier" method="post" role="form">
  <input type="text" name="id" value="${supplier_id}" style="visibility:hidden">
  
    <input type="submit" value="Confirm Delete" class="btn btn-info" />
 </form>
 </div>
<div class="col-sm-6">
<form action="supdisp" method="get" role="form">
    <input type="submit" value="Cancel" class="btn btn-info" />
 </form>
 </div>
 </div>
<br>
	<br>
	
<%@ include file="footer.jsp" %>	

</body>
</html>