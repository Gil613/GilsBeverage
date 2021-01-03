<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/ginlist.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div id="title" align="center">Member List</div><br>
	<div align="center" id=body>
	<table class="table_0">
	<tr>
		<th id="th1">아이디</th>
		<th id="th2">이름</th>
		<th id="th3">전화번호</th>
		<th id="th4">이메일</th>
		<th id="th4">가입일자</th>
	</tr>
	<c:forEach items="${member}" var="m">
	<tr>
		<th id="th1">${m.id}</th>
		<th id="th2">${m.name}</th>
		<th id="th3">${m.phone}</th>
		<th id="th4">${m.email}</th>
		<th id="th4">${m.regdate}</th>
		<th>
			<input type="button" onclick="location.href='memberDelete.do?id=${m.id}'" value="삭제">&emsp;
		</th>
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
<div id="bottom_line"></div>
</html>

<c:import url="bottom.jsp" />