<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String info="www.jsptest.com" ;%>
<% int temp=30;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第三种Scriptlet定义</title>
</head>
<body>
<h3>info = <%=info %></h3>
<%--使用表达式输出变量 --%>
<h3>temp = <%=temp %></h3>
<h3>name = <%="diffZhao" %></h3>

</body>
</html>