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
<title>Regalo :: Update Category</title>
</head>
<body>
	<form:form modelAttribute="category" role="form" action="updateCategory">
		<form:input style="visibility:hidden;" path="category_id" />
		<table class="table table-striped">
			<tr>
				<td><form:label path="category_name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="category_name" /></td>
				<td><form:errors path="category_name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="category_address">
						<spring:message text="Address " />
					</form:label></td>
				<td><form:input path="category_address" /></td>
			</tr>
			<tr>
				<td><form:label path="category_email">
						<spring:message text="Email" />
					</form:label></td>
				<td><form:input path="category_email" /></td>
				<td><form:errors path="category_email" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="category_contact">
						<spring:message text="Contact" />
					</form:label></td>
				<td><form:input path="category_contact" /></td>
				<td><form:errors path="category_contact" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form:form>
<br>
	<br>
	
<%@ include file="footer.jsp" %>	

</body>
</html>



