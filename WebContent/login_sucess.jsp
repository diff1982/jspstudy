<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登陆跳转成功页面</title>
</head>
<body>
<center>
<h1>登陆成功！</h1>
<h2><font color="red"><%=request.getParameter("uname") %> Welcome!</font></h2>
</center>

</body>
</html>