<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! int fontsize; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>For循环测试 </title>
</head>
<body>
<h3>For 循环测试</h3>
<%
for (fontsize=1;fontsize<=3;fontsize++){%>
	<font color="green" size="<%=fontsize%>">
	For循环测试
	</font>
<br />	
<%}%>

</body>
</html>