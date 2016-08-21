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
<title>Add Category</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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

	<form:form method="post" commandName="addcategory"
		enctype="/form-data" action="addcategory">
		<table class="table table-striped">
			<tr>
				<td><form:label path="category_name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="category_name" /></td>
				<td><form:errors path="category_name" cssClass="error" /></td>
			
				<td><form:label path="category_description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="category_description" /></td>
				<td><form:errors path="category_description" cssClass="error" /></td>
		
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
<br>
	<br>
	
<%@ include file="footer.jsp" %>	

</body>
</html>