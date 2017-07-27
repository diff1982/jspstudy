<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP login_check</title>
</head>
<body>

<%!
	//创建数据驱动
	final String DBDIRVER = "org.gjt.mm.mysql.Driver";
	//指定数据库连接
    final String DBURL = "jdbc:mysql://localhost:3306/klsps?useSSL=true";
	//数据库用户
	final String DBUSER = "root";
	//数据库密码
	final String DBPASS = "82216019";	
%>
<% 	//初始化数据库连接
	Connection conn = null ;
	//声明数据库操作
	PreparedStatement pstmt=null;
	//声明数据库结果集
	ResultSet rs = null;
	//设置标志位
	boolean flag = false;
	//接收用户名
	String name = null;
%>
<%
	try{
		//加载驱动程序
		Class.forName(DBDIRVER);
		//获得数据库连接
		conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		//定义查询语句：输入正确的id和password，返回name
		String sql = "SELECT name FROM kluser WHERE id=? AND password=?";
		//实例化数据库操作对象
		pstmt=conn.prepareStatement(sql);
		//设置查询内容
		pstmt.setString(1,request.getParameter("id"));
		pstmt.setString(2,request.getParameter("password"));
		//执行查询并返回数据集
		rs = pstmt.executeQuery();
		//查询成功
		if(rs.next()){
			//返回用户name
			name = rs.getString(1);
			System.out.println(name);
			//标志位置1
			flag = true;
		}
	}catch(Exception e){
	System.out.println(e);
}
finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){}
	}
%>
<%
	//标志位为1 页面跳转至login_sucess.jsp
if(flag){
%>
<jsp:forward page ="login_sucess.jsp">
	<jsp:param name = "uname" value = "<%=name%>"/>
</jsp:forward> 
<%
}else{
%>
<jsp:forward page ="login_failure.htm"/>
<% }%>
</body>
</html>