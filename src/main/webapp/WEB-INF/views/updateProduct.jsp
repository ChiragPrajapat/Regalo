<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regalo :: Update Product</title>
</head>
<body>
	<form:form modelAttribute="product" role="form" action="updateProduct">
		<form:input style="visibility:hidden;" path="product_id" />
		<table>
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
			<tr>
				<td colspan="2"><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>



