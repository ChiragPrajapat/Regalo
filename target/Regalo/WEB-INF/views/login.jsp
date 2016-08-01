<%@ include file="header.jsp" %>
<body>
<div class="container">
		<h3>Please login with your credentials </h3> <br>

${message}
	<form:form action="isValidUser" method="post">
	<table>
<tr>
<td>	
	<div class="form group">
	 <label for="userID"> User ID:</label>
  <input type="text" class="form-control" name="name" id="UserID" placeholder="User Name">
  
  </div><br>
  </td>
  <tr>
  <td>
  <div class="form group">
  <label for="password"> Password:</label>
  <input type="password" name="password" class="form-control" id="password">
  
  </div><br>
   </td>
 
  </table>
  <button type="submit" class="btn btn-success">Login</button>
  <button type="link" class="btn btn-link"><a href="register">Sign up</a></button>
  <a href="index">Home</a>
	</form:form>
</div>

</body>
</html>