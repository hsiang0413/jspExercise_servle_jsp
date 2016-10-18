<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import='ch05_07.Cat'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach02</title>
</head>
<body>
	<%--
  Cat garfield  = new Cat(10, "嘉菲(Array)");
  Cat kitty     = new Cat(3,   "凱蒂(Array)");
  Cat pili      = new Cat(3,   "霹靂(Array)");
  Cat[] ca = {garfield, kitty, pili};
  request.setAttribute("CatArray", ca);
  請於網頁內用表格的方式顯示三隻貓的姓名與年齡。
 --%>
	<%
		Cat garfield = new Cat(10, "嘉菲(Array)");
		Cat kitty = new Cat(3, "凱蒂(Array)");
		Cat pili = new Cat(3, "霹靂(Array)");
		Cat[] ca = { garfield, kitty, pili };
		request.setAttribute("CatArray", ca);
	%>
	在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)
	<BR>
	<c:forEach var="cat" items="${CatArray}" varStatus="vs">
		<c:out value="<table border='1'>" escapeXml="false" />
		<c:set var="width" value="50px" />
		<c:if test="${vs.first}">
			<c:set var="color" value="#A6FFA6" />
			<tr bgcolor="${color}">
				<th width="${width}">姓名</th>
				<th width="${width}">年齡</th>
			</tr>
		</c:if>
		<c:set var="color" value="#D9FFFF" />
		<c:if test="${vs.count%2==0}">
			<c:set var="color" value="#80FFFF" />
		</c:if>
		<tr bgcolor="${color}">
			<td width="${width}">${cat.catName}</td>
			<td width="${width}">${cat.weight}</td>
		</tr>
		<c:out value="</table>" escapeXml="false" />
	</c:forEach>
	<P />
	<A href="index.jsp">回首頁</A>
</body>
</html>