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
	<table border=1>
	<tr>
	<td>사진</td><td>이름</td><td>용량</td><td>가격</td>
	</tr>
	<c:forEach items="${lw}" var="lw">
	<tr>
	
	<td><img src="./product/${lw.filename}"  width=70  height=50 /></td>
	<td><a href="content.do?idx=${lw.idx}">${lw.pname}</a></td>
	<td>${lw.capacity}</td>
	<td>${lw.cost}</td>
	
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />