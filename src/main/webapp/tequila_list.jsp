<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/tequilalist.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div id="title" align="center">Tequila List</div><br>
	<div align="center" id=body>
	<table class="table_0">

	<c:forEach items="${tequila}" var="t">
	<tr>
	
	<th id="th1"><img id="img" src="./product/${t.filename}"/></th>
	<th id="th2"><a href="content.do?idx=${t.idx}">${t.pname}</a></th>
	<th id="th3">${t.capacity}</th>
	<th id="th4">${t.cost}</th>
	<th><input type="button" onclick="location.href='delete.do?idx=${t.idx}'" value="삭제"></th>
	
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
<div id="bottom_line"></div>
</html>

<c:import url="bottom.jsp" />