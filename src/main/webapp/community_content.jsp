<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/community_content.css">
<title>Insert title here</title>
</head>

<body>
	<div align="center" id=body>
	<table class="table_0">
	
	<thead>
		<tr>
			<th>커뮤니티 글 보기</th>
		</tr>
	</thead>
	
	<tbody>
	<tr>
		<th scope="row">
			${c.title}
		</th>
	</tr>
	<tr>
	<th scope="row">
		<c:if test="${c.filename ne 'space.jpg'}">
			<img id="img_edit" src="./community/${c.filename}" />
		</c:if>
		<br>${c.content}
	</th>
	</tr>
	</tbody>
	</table>
	<!-- 게시글 작성자만 수정가능 -->
	<c:if test="${c.id eq id}">
		<input type="button" onClick="location.href='modifyCommunity.do?idx=${c.idx}'" value="수정하기">
	</c:if>
	
		<input type="button" onClick="location.href='communityList.do'" value="목록보기">
	
	</div>
</body>
</html>

<c:import url="bottom.jsp" />