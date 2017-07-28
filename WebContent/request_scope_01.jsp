<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import ="java.util.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>request_scope_test_page</title>
</head>
<body>
<%
	request.setAttribute("name","diff");
	request.setAttribute("birthday",new Date());
%>
<jsp:forward page="request_scope_02.jsp"/>
</body>
</html>