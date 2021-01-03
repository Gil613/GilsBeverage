<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/member_list.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div id="title" align="center">Member List</div><br>
	<div align="center" id=body>
	<table class="table_0">
		
		<tr>
			<th width="100px">아이디</th>
			<th width="100px">이름</th>
			<th width="150px">전화번호</th>
			<th width="200px">이메일</th>
			<th width="150px" colspan="2">가입일자</th>
		</tr>
		
		<c:forEach items="${member}" var="m">
			<tr align="center">
				<td id="th6" height="50px">${m.id}</td>
				<td id="th7">${m.name}</td>
				<td id="th8">${m.phone}</td>
				<td id="th9">${m.email}</td>
				<td id="th10">${m.regdate}</td>
				<td>
					<input type="button" onclick="location.href='memberDelete.do?id=${m.id}'" value="삭제">&emsp;
				</td>
			</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
<div id="bottom_line"></div>
</html>

<c:import url="bottom.jsp" />