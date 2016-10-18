<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>--%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach01</title>
</head>
<body>
<%--
本網頁必須印出下列圖形：
 * 
 * * 
 * * * 
 * * * * 
 * * * * * 
 * * * * * * 
 * * * * * * * 
 * * * * * * * * 
 * * * * * * * * * 
 --%>
在這裡寫出答案<BR>
<%-- 
<c:set var="n" value="*"/>
<c:forEach var="x" begin="1" end="9" >
	<c:out value="${x}" escapeXml="false"/><br/>
</c:forEach>
--%>

<%-- method1 --%>
<c:forEach var="x" items="*,**,***,****,*****,******,*******,********,*********">
${x}<br/>
</c:forEach>

<%-- method 2 --%>
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>