<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP login_check</title>
</head>
<body>
<%  final String  DBDRIVER="org.gjt.mm.mysql.Driver" ;
    final String DBURL ="jdbc:mysql://localhost:3306/klsps";
	final String DBUSER = "zhaoyulong";
	final String DBPASS = "123456";	
%>
<% Connection conn = null ;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	boolean flag = false;
	String name = null;
%>
<%
	try{
		Class.forName(DBDRIVER);
		conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		String sql = "SELECT name from user where userid=? and password=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("id"));
		pstmt.setString(2,request.getParameter("password"));
		rs = pstmt.executeQuery();
		if(rs.next()){
			name = rs.getString(1);
			flag = true;
		}
	}catch(Exception e){
	System.out.println(e);
}
finally{
	try{
		rs.close();
		pstmt.close();
	}catch(Exception e){}
	}
%>
<% 
if(flag) {
%>
<jsp::forword page = "login_sucess,jsp">
<jsp::param name = "uname" value = "<%=name%>"/>
</jsp::forword> 
<%
}else{
%>
<jsp::forword page = "login_failure.htm"/>
<% }%>

</body>
</html>