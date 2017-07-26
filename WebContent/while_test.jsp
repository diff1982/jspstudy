<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! int fontsize=1; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>While测试</title>
</head>
<body>
<%while (fontsize<=3){%>
	<font color="red" size="<%= fontsize%>">
	While测试</font><br />
	<% fontsize++; %>
<% }%>


</body>
</html>