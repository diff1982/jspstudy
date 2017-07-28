<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application_scope测试页面</title>
</head>
<body>
<%
	application.setAttribute("name","diff");
	application.setAttribute("birthday",new Date());
%>
<h1>测试application属性范围</h1>
<a href="application_scope_02.jsp">application_scope_02</a>


</body>
</html>