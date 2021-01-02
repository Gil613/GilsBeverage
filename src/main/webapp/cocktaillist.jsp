<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/cocktaillist.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div id="title" align="center">Cocktail List</div><br>
	<div align="center" id=body>
	<table class="table_0">

	<c:forEach items="${cocktail}" var="c">
	<tr>
	
	<th id="th1"><img id="img" src="./product/${c.filename}"/></th>
	<th id="th2"><a href="contenc.do?idx=${c.idx}">${c.pname}</a></th>
	<th id="th3">${c.capacity}</th>
	<th id="th4">${c.cost}</th>
	<th><input type="button" onclick="location.href='delete.do?idx=${c.idx}'" value="삭제"></th>
	
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
<div id="bottom_line"></div>
</html>

<c:import url="bottom.jsp" />