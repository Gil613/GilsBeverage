<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/notice_content.css">
<title>Insert title here</title>
</head>

<body>

	<div align="center" id=body>
	<table class="table_0">
	<thead>
		<tr>
			<th>공지사항</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
		<th scope="row">${nb.title}</th>
		</tr>
		
		<tr>
			<th scope="row">
				<c:if test="${nb.filename ne 'space.jpg'}">
					<img id="img_edit" src="./notice/${nb.filename}" />
				</c:if>
				<br>
				${nb.content}
			</th>
		</tr>
	</tbody>
	</table>
	
	<c:if test="${id eq 'master'}">
		<input type="button" onClick="location.href='modifyNotice.do?idx=${nb.idx}'" value="수정하기">
	</c:if>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />