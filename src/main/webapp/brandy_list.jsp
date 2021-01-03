<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/brandylist.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div id="title" align="center">Brandy List</div><br>
	<div align="center" id=body>
	<table class="table_0">

	<c:forEach items="${brandy}" var="B">
	<tr>
	
	<th id="th1"><img id="img" src="./product/${b.filename}"/></th>
	<th id="th2"><a href="contenb.do?idx=${b.idx}">${b.pname}</a></th>
	<th id="th3">${b.capacity}</th>
	<th id="th4">${b.cost}</th>
	<c:if test="${id eq 'master'}">
		<th><input type="button" onclick="location.href='delete.do?idx=${b.idx}'" value="삭제"></th>
	</c:if>
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
<div id="bottom_line"></div>
</html>

<c:import url="bottom.jsp" />