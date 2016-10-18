<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach03</title>
</head>
<body>
<%--
  <%
   request.setAttribute("IDKey1", "小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
  %>   
  請於網頁內用表格的方式顯示上面這五個用逗點隔開的名詞。

 --%>
 <%
 request.setAttribute("IDKey1","小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
 %>
 <c:forEach items="${IDKey1}" var="id" varStatus="vs">
<table border="1">
<c:if test="${vs.first}" >
	<tr>
		<td>姓名</td>
	</tr>
</c:if>
	<tr>
		<td>${id}</td>
	</tr>
</table>
</c:forEach>
<%-- 
<table border='1'>
<tr>
	<td>${IDKey1[0]}</td>
</tr>
</table>
<hr>
--%>


在這裡寫出答案<BR>
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>