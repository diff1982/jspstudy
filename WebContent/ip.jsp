<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
	<head>
	<title>JSP Test</title>
	</head>
	<body>
	Hello World!<br>
	<%
	out.println("你的ip地址是 Your IP Address is: "+ request.getRemoteAddr());
	%>
	</body>
	</html>