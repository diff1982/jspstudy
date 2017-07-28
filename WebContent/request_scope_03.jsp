<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--超链接跳转后地址会发生变化，并且属于客户端跳转，
跳转后页面无法取得值 --%>
<%
	request.setAttribute("name","diff");
	request.setAttribute("birthday",new Date());
%>
<h1><a href="request_scope_02.jsp">request_scope_02</a></h1>


</body>
</html>