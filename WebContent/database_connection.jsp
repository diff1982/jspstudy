<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据库操作</title>
</head>
<body>
<%
	//定义数据库驱动
	final String DBDIRVER = "org.gjt.mm.mysql.Driver";
	//数据库连接地址
	final String DBURL = "jdbc:mysql://localhost:3306/mldn";
	//数据库用户名
	final String DBUSER = "root";
	//数据库密码
	final String DBPASS = "82216019";
%>
<%
	//声明数据库连接对象
	Connection conn = null;
	//声明数据库操作
	PreparedStatement pstmt = null;
	//声明数据库结果集
	ResultSet rs = null;
%>
<%
	try{
		//数据库驱动加载
		Class.forName(DBDIRVER);
		
		//取得数据连接
		conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		
		//创建查询语句
		String sql = "SELECT empno,ename,job,sal,hiredate FROM emp";
		
		//实例化prepareStatement对象
		pstmt = conn.prepareStatement(sql);
		
		//执行查询操作
		rs = pstmt.executeQuery();
%>
	<center>
	<table border="1" width="80%">
	<tr>
	<td>员工编号</td>
	<td>雇员姓名</td>
	<td>雇员工作</td>
	<td>雇员工资</td>
	<td>雇佣日期</td>
	</tr>
	<%
		while(rs.next()){			
			int empno=rs.getInt(1);
			String ename=rs.getString(2);
			String job = rs.getString(3);
			float sal = rs.getFloat(4);
			java.util.Date date = rs.getDate(5);
		%>
		<tr>
		<td><%=empno %></td>
		<td><%=ename %></td>
		<td><%=job %></td>
		<td><%=sal %></td>
		<td><%=date %></td>
		</tr>
	<%}%>
	</table>
	</center>
<%}catch(Exception e) {
	System.out.println(e);
}finally{
	rs.close();
	pstmt.close();
	conn.close();
}%>
</body>
</html>