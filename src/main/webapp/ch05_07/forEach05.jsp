<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05_07.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach05</title>
</head>
<body>

 <%
   Cat garfield = new Cat(10, "嘉菲(Map)");
   Cat kitty     = new Cat(3,   "凱蒂(Map)");
   Cat pili       = new Cat(3,    "霹靂(Map)");
   Map<String, Cat> aMap = new HashMap<String, Cat>();
   aMap.put("Garf_key", garfield);
   aMap.put("Kitt_key", kitty);
   aMap.put("Pili_key", pili);
   request.setAttribute("CatMap", aMap);
 %>
在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)<BR>
<hr>
 <c:forEach var="cats" items="${CatMap}">
 	 <c:forEach var="cat" items="${cats[Garf_key]}">
 	${cat}
	 </c:forEach>
 </c:forEach>
<hr>
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>