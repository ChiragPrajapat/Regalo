<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
<style>
.error {
	color: red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>

	<form:form method="post" commandName="addproduct"
		enctype="multipart/form-data" action="addproduct">
		<table class="table table-striped">
			<%-- <tr>
           <td><form:label path="product_id">Product ID:</form:label></td>
           <td><form:input path="product_id" value="${product.product_id}" /></td>
       </tr> --%>
			<tr>
				<td><form:label path="product_name">
						<spring:message text="Product name" />
					</form:label></td>
				<td><form:input path="product_name" /></td>
				<td><form:errors path="product_name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="product_supplier">
						<spring:message text="product supplier" />
					</form:label></td>
				<td><form:input path="product_supplier" /></td>
				<td><form:errors path="product_supplier" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="product_price">
						<spring:message text="Product price" />
					</form:label></td>
				<td><form:input path="product_price" /></td>
				<td><form:errors path="product_price" cssClass="error" /></td>
			</tr>

			<tr>
				<td><form:label path="product_description">
						<spring:message text="product description " />
					</form:label></td>
				<td><form:input path="product_description" /></td>
			</tr>
			<tr>
				<td><form:label path="product_category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:select path="product_category">
						<form:option value="" label="Select Category" />
						<form:option value="Birthday" label="Birthday" />
						<form:option value="Christmas" label="Christmas" />
						<form:option value="Wedding" label="Wedding" />
					</form:select></td>
				<td><form:errors path="product_category" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="file">
						<spring:message text="Image" />
					</form:label></td>
				<td><form:input type="file" path="file" multiple="multiple" />
				</td>
			</tr>
			<tr><td><input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/></td></tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
<br>
	<br>
	
<%@ include file="footer.jsp" %>	

</body>
</html>