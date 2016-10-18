<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.*"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab05_02</title>
</head>
<body>
<H1>利用JSP顯示Servlet送來的共用資料(Scripting版)</H1>
<H2>當你看到此畫面時，表示已經除錯成功</H2>
<%
    int sum = (Integer)request.getAttribute("TotalPayment");
    out.println("Controller放入的資料:<FONT color='red'>" + sum + "</FONT><BR>");
%>
</body>
</html>