<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int n=(int)(Math.random()*101);
	if(n>60){
		out.println("及格萬萬歲"+"<br>");
	}
out.println("亂數(1)="+n+"<br>");
%>
亂數(2)=<%=n %><br>

<%!public static final double VAT=0.05; %>
<%!private int n=100; 
	public String getNumber(){
		return "10 20 30 40 41 42";
	}
%>
</body>
</html>