<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,ch05_99.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date orderDate1 = Date.valueOf("2011-01-01");
		Date orderDate2 = Date.valueOf("2011-01-11");
		Date orderDate3 = Date.valueOf("2011-01-21");
		OrderBean ob1 = new OrderBean(65824, orderDate1, "array123", 1507);
		OrderBean ob2 = new OrderBean(42301, orderDate2, "array456", 2507);
		OrderBean ob3 = new OrderBean(94337, orderDate3, "array789", 3507);
		OrderBean oba[] = { ob1, ob2, ob3 };
		request.setAttribute("Case4", oba);
	%>

	<c:forEach var='x' items='${Case4}' varStatus='vs'>

		<c:if test="${vs.first}">
			<c:out value="<table border='1'>" escapeXml="false" />
			<c:set var="color" value="#93FF93" />
			<tr bgcolor="${color}">
				<th>customerID</th>
				<th>orderDate</th>
				<th>orderNo</th>
				<th>amount</th>
			</tr>
		</c:if>
		<c:set var="color" value="#00FFFF" />
		<c:if test="${vs.count%2==0}">
			<c:set var="color" value="#A6FFFF" />
		</c:if>
		<tr bgcolor="${color}">
			<td>${x.customerID}</td>
			<td>${x.orderDate}</td>
			<td>${x.orderNo}</td>
			<td>${x.amount}</td>
		</tr>

		<c:if test="${vs.last}">
			<c:out value="</table>" escapeXml="false" />
		</c:if>
	</c:forEach>

</body>
</html>