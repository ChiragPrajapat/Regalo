<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style type="text/css">
.errorblock {
 color: #ff0000;
 background-color: #ffEEEE;
 border: 3px solid #ff0000;
 padding: 8px;
 margin: 16px;
}
.logoutblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
 margin: 16px;
}
</style>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>
<c:if test="${error=='true'}">
  <div class="errorblock">
   Your login attempt was not successful, try again.
 
  </div>
 </c:if>
 <c:if test="${not empty logoutmsg }">
   <div class="logoutblock">
   <c:out value="${logoutmsg}" />
   </div>
 </c:if>
<form name='f' role="form" action="<c:url value='j_spring_security_check' />" method="post" >
  <div class="form-group">
    <label for="user_username">UserName:</label>
    <input type="text"  name="j_username"  class="form-control" />
  </div>
  <div class="form-group">
    <label for="user_password">Password:</label>
    <input type="password" class="form-control" name="j_password" />
  </div>
  <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
  <button type="submit" class="btn btn-default" >Submit</button>
</form>
</div>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <style type="text/css">
.errorblock {
 color: #ff0000;
 background-color: #ffEEEE;
 border: 3px solid #ff0000;
 padding: 8px;
 margin: 16px;
}
.logoutblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
 margin: 16px;
}
</style>

<body>
<div class="container">
		<h3>Please login with your credentials</h3>
<c:if test="${error=='true'}">
  <div class="errorblock">
   Your login attempt was not successful, try again.
 
  </div>
 </c:if>
 <c:if test="${not empty logoutmsg }">
   <div class="logoutblock">
   <c:out value="${logoutmsg}" />
   </div>
 </c:if>
	
		
		<form name:"f" action="<c:url value='j_spring_security_check'/>"
			method="post">
			<table>
				<tr>
					<td>
						<div class="form group">
							<form:label path="user_username">
								<spring:message text="Username" />
							</form:label>
							<input type='text' name='j_username' />
						</div></td>
				</tr>
				<tr>
					<td>
						<div class="form group">
							<form:label path="user_password">
								<spring:message text="Password" />
							</form:label>
						<input type='password' name='j_password' />
						</div>
						</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-success">Login</button>
			<a href="register">Sign up</a>
			<a href="index">Home</a>
		</form>
	</div>

</body>
</html> --%>