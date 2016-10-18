<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border='1'>
<tr>                           <!-- src全部都是'showPicture.do',瀏覽器視為同一請求 -->
	<td><img width='150' height='120' src='../00/showPicture.do?q=1'></td> 
	<td><img width='150' height='120' src='../00/showPicture.do?q=2'></td>
	<td><img width='150' height='120' src='../00/showPicture.do?q=3'></td>
</tr>
<tr>							<!-- src後面加不同的"?name=value",'showPicture.do?q=4'瀏覽器視為不同一請求 -->
	<td><img width='150' height='120' src='../00/showPicture.do?q=4'></td>
	<td><img width='150' height='120' src='../00/showPicture.do?q=5'></td>
	<td><img width='150' height='120' src='../00/showPicture.do?q=6'></td>
</tr>
<tr>
	<td><img width='150' height='120' src='../00/showPicture.do?q=7'></td>
	<td><img width='150' height='120' src='../00/showPicture.do?q=8'></td>
	<td><img width='150' height='120' src='../00/showPicture.do?q=9'></td>
</tr>
</table>
</body>
</html>