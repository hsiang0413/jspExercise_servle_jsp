<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL c:out練習</title>
</head>
<body>
	<h1>JSTL c:out練習</h1>
	在這裡印出三列 table標籤
	<BR>
	<BR>
	<%--
     <table border='1'>
      <TR><TD>暑假</TD><TD>寒假</TD></TR>
      </table>
--%>
	<c:out value="<table border='1'><tr><td>" escapeXml="false" />
	<c:out value="暑假" />
	<c:out value="</td><td>" escapeXml="false" />
	<c:out value="寒假" />
	<c:out value="</td></tr></table>" escapeXml="false" />
	<hr>
	<%
		int n = (int) (Math.random() * 20);
		if (n % 2 == 0) {
			request.setAttribute("RandomNumber", "" + n);
		}
	%>
	<c:set value='${RandomNumber}' var='n'/>
	<c:if test="${n==none}">  <%--也可以是n==null--%>
		<c:set value='無' var='n'/>
	</c:if>

	本次亂數為:${n}
	<BR>
 
</body>
</html>