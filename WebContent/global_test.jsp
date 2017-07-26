<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! public static final String INFO = "www.jsptest.com"; %>
    <%! public int add(int x,int y){
    		return x+y;
    }
    %>
    <%! class Person{
    	private String name;
    	private int age;
    	public Person(String name,int age){
    		this.name=name;
    		this.age=age;
    	}
    	public String toString(){
    		return "name = "+this.name+"; age = "+this.age;
    		
    	}
    } %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.println("<h3>INFO = "+ INFO +"</h3>"); %>
	<% out.println("<h3>3+5 = "+add(3,5)+"</h3>"); %>
	<% out.println("<h3>"+new Person("diffZhao",35)+"</h3>"); %>
</body>
</html>