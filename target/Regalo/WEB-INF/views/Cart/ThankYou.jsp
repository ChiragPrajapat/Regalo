<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/views/header.jsp"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You</title>
<style type="text/css">

body {
	margin-left: 0%;
	margin-right: 0%;
}
h6
{
font-family : Arial;
text-align:center;
font-size:200%;
color : Green;
}
</style>
</head>

<body>
<img style="width:50px;height:50px" alt="no image" src="/resources/images/regalo_thank.png"></img>

<form:form  method="post">
<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>

<h6>


Thank you for Shopping with us !
</h6>
</form:form>
</body>
</html>