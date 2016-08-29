<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Order</title>
<style type="text/css">
body{
    margin:0px;
    background:silver;
}
.header {
    height:50px;
    background:#F0F0F0;
    border:1px solid #CCC;
    width:960px;
    margin:0px auto;
}
.content {
    width:960px;
    background: #F0F0F0;
    border: 1px solid #CCC;
    height: 2000px;
    margin: 20px auto;
}
</style>
</head>

<body>
<form:form method="post">
<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey} "/>
	<h6>Your details has been received , please click below to confirm your
	order.</h6>
	
		<div class="form-group">

			<button type="submit" class="btn btn-default" name="_eventId_submit">Confirm</button>

		</div>
	</form:form>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>