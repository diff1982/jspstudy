<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! int day=3; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>判断测试</title>
</head>
<body>
<h3>IF...ELSE测试</h3>
	<% if (day==1| day==7){%>
	<p>今天是周末</p>
	<% } else { %>
	<p> 今天是工作日 </p>
	<%} %>		

</body>
</html>