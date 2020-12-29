<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/stylesheet.css">
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div align="center" id=body>
	<h2>상품 보기</h2><br>
	<form action="modify.do" method="get">
	<table width=500>
	<tr>
	<td rowspan=3><img src="./product/${p.filename}"  height=300 /></td>
	<td>&emsp;&emsp;이름 : ${p.pname}</td>
	</tr>
	<tr>
	<td>&emsp;&emsp;용량 : ${p.capacity}</td>
	</tr>
	<tr>
	<td>&emsp;&emsp;가격 : ${p.cost} 원</td>
	</tr>
	</table>
	<table border=1>
	<tr><td width=590>${p.pcontent}</td></tr>
	</table>
	
	<a href="modify.do?idx=${p.idx}">수정하기</a>
	</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />