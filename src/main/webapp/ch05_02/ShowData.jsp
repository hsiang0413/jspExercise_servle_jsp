<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab05_02</title>
</head>
<body> 
<!-- 
<fmt:requestEncoding value="UTF-8" />
 -->
<%
  request.setCharacterEncoding("UTF-8");
%>
<h1>使用EL讀取表單資料</h1>
您輸入的資料有：<BR>
姓名：${param.customerName}<BR>
地址：${param.address}<BR>
</body>
</html>