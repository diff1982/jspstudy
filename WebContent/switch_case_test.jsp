<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! int day=3; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SWITCH测试</title>
</head>
<body>
	<h3>SWTICH测试</h3>
	<%
	switch(day){
	case 0:
		out.println("星期天");
		break;
	case 1:
		out.println("星期一");
		break;
	case 2:
		out.println("星期二");
		break;
	case 3:
		out.println("星期三");
		break;
	case 4:
		out.println("星期四");
		break;
	case 5:
		out.println("星期五");
		break;
	case 6:
		out.println("星期六");
		break;
	default:
		out.println("工作日");
	} 
	%>	

</body>
</html>