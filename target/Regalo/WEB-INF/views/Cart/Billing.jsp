<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing</title>
</head>
<%@include file="/WEB-INF/views/header.jsp"%>
<body>
<form:form method="post" "
			enctype="/form-data" action="">
			<table class="table table-striped">
				<tr>
					<td><form:label path="">
							<spring:message text=" Name" />
						</form:label></td>
					<td><form:input path="user_firstname" /></td>
					</tr>
				<tr>
					<td><form:label path="user_lastname">
							<spring:message text="Last Name" />
						</form:label></td>
					<td><form:input path="user_lastname" /></td>
					
				</tr>
<tr>
					<td><form:label path="user_contact">
							<spring:message text="Contact" />
						</form:label></td>
					<td><form:input path="user_contact" /></td>
					
				</tr>


				<tr>
					<td><form:label path="user_address">
							<spring:message text="Shipping Address" />
						</form:label></td>
				
					<td><form:textarea path="user_address" rows="3"  cols="20"/></td>
					<td><form:errors path="user_address" cssClass="error" /></td>
				</tr>
				<tr>
					<!-- 
				<tr>
					<td><form:radiobutton path="user_gender" value=" M" label=" M"/>
					<form:radiobutton path="user_gender" value=" F" label=" F"/></td>
				</tr>
				 -->
				<tr>
					<td><input type="submit" value="Confirm" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
			</table>
		</form:form>
<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>