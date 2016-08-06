<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<title>Product Page</title>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta product_name="viewport" content="wproduct_idth=device-wproduct_idth, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solproduct_id;
	border-wproduct_idth: 1px;
	overflow: hproduct_idden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solproduct_id;
	border-wproduct_idth: 1px;
	overflow: hproduct_idden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>
	<h1>Add a Product</h1>

	<c:url var="addAction" value="addproduct"></c:url>

	<form:form  method="post" commandName="addproduct">
		<table>
			<c:if test="${!empty product.product_product_name}">
				<tr>
					<td><form:label path="product_product_id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="product_product_id" readonly="true" size="8"
							disabled="true" /> <form:hproduct_idden path="product_product_id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="product_product_id">
						<spring:message text="ID" />
					</form:label></td>
				<td><form:input path="product_product_id" size="8" /> <form:hproduct_idden
						path="product_product_id" /></td>
			</tr>
			<tr>
				<td><form:label path="product_product_name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="product_product_name" /></td>
			</tr>
			<tr>
				<td><form:label path="product_category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:input path="product_category" /></td>
			</tr>
			<tr>
				<td><form:label path="product_supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<td><form:input path="product_supplier" /> <form:hproduct_idden
						path="product_supplier" /></td>
			</tr>
			<tr>
				<td><form:label path="product_description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="product_description" /> <form:hproduct_idden
						path="product_description" /></td>
			</tr>
			<tr>
				<td><form:label path="product_price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="product_price" /> <form:hproduct_idden
						path="product_price" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.product_product_name}">
						<input type="submit" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.product_product_name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Product List</h3>
<c:if test="${!empty lists}">
	<table class="tg">
	<tr>
		<th wproduct_idth="80">Product ID</th>
		<th wproduct_idth="120">Product Name</th>
		<th wproduct_idth="120">Product Description</th>
		<th wproduct_idth="120">Product supplier</th>
		<th wproduct_idth="120">Product Price</th>
		<th wproduct_idth="120">Product category</th>
		
		<th wproduct_idth="60">Edit</th>
		<th wproduct_idth="60">Delete</th>
	</tr>
	<c:forEach items="${lists}" var="product">
		<tr>
			<td>${product.product_product_id}</td>
			<td>${product.product_product_name}</td>
			<td>${product.product_supplier}</td>
			<td>${product.product_price} </td>
			<td><a href="<c:url value='/edit/${product.product_product_id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${product.product_product_id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html> --%>





<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Product Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solproduct_id;border-wproduct_idth:1px;overflow:hproduct_idden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solproduct_id;border-wproduct_idth:1px;overflow:hproduct_idden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Product
</h1>

<c:url var="addAction" value="/addproduct" ></c:url>

<form:form action="${addAction}" commandName="addproduct">
<table>
	<c:if test="${!empty product.product_name}">
	<tr>
		<td>
			<form:label path="product_id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="product_id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="product_id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="product_name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="product_name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="product_category">
				<spring:message text="Category"/>
			</form:label>
		</td>
		<td>
			<form:input path="product_category" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty product.product_name}">
				<input type="submit"
					value="<spring:message text="Edit Product"/>" />
			</c:if>
			<c:if test="${empty product.product_name}">
				<input type="submit"
					value="<spring:message text="Add Product"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>