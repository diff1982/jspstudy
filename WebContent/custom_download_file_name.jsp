<%@ page language="java" contentType="test/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%// 指定 文件 下载 后的 保存 名称 是 mldn.doc 
response.setHeader("Content-Disposition","attachment; filename=custom.doc"); 
%> 
<TR><TD> 欢迎 大家 光临 软件 实 训 中心！</TD></TR>
<TR><TD> 网址： www. localhost. cn</TD></TR> 
<TR><TD> 本页 面 将使 用 test 显示！</TD></TR> 
</CENTER>


</body>
</html>