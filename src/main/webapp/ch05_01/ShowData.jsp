<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab05_01</title>
</head>
<body>
<!-- 第一份資料為字串物件，識別字串為"Customer"  -->
第一份資料為 ${Customer}<BR>
<HR>
<P> 
<!-- 第二份資料為JavaBean物件，識別字串為"PB"  -->
第二份資料為ProductBean物件：<BR>
產品編號: ${PB.productNo}<BR>
產品名稱: ${PB.name}<BR>
產品價格: ${PB.price}<BR>
產品重量: ${PB.weight}<BR>
<HR>
<P>
<!-- 第三份資料為Map物件，識別字串為"MapKey"  -->
第三份資料為Map物件：<BR>
Map物件的第一對資料的Key為key001<BR>
第一對資料的Value為ProductBean物件<BR>
產品編號: ${MapKey['key-001'].productNo}<BR>
產品名稱: ${MapKey['key-001'].name}<BR>
產品價格: ${MapKey['key-001'].price}<BR>
產品重量: ${MapKey['key-001'].weight}<BR>
<HR>
Map物件的第二對資料的Key為key002<BR>
第二對資料的Value為ProductBean物件<BR>
產品編號: ${MapKey['key 002'].productNo}<BR>
產品名稱: ${MapKey['key 002'].name}<BR>
產品價格: ${MapKey['key 002'].price}<BR>
產品重量: ${MapKey['key 002'].weight}<BR>
<P>
</body>
</html>