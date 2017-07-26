<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>动态包含-参数接收测试</title>
</head>
<body>
<% String username="testinfo" ;%>
<h1>动态包含-参数接收测试</h1>
<jsp:include page="receive_para.jsp">
<jsp:param name="name" value="<%=username %>"/>
<jsp:param name="info" value="www.localhost.com"/>
</jsp:include>
</body>
</html>