<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/community_list.css">
<meta charset="UTF-8">
</head>

<body>
	<div align="center" id=body>
	  	<div id="title">
			<table>
				<tr>
					<td id="t1">커뮤니티 게시판</td>
					<td id="t2">| 이 곳은 자유로운 대화 공간입니다.</td>
				</tr>
			</table>
		</div>
		<form action="community_register.jsp">
		<table class="table_0">
			<thead>
				<tr>
					<th scope="cols" id="th1">글 번호</th>
					<th scope="cols" id="th2">작성자</th>
					<th scope="cols" id="th3">사진</th>
					<th scope="cols" id="th4">글 제목</th>
					<th scope="cols" colspan="2" id="th5">작성 일</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="c" items="${community}">
					<tr>
						<td>${c.idx}</td>
						<td>${c.id}</td>
						<td><c:if test="${c.filename ne 'space.jpg'}"><img id="img" src="./cocktail/${c.filename}"/></c:if></td>
						<td><a href="community_content.do?idx=${c.idx}">${c.title}</a></td>
						<td>${c.regdate}
							&nbsp;<c:if test="${c.id eq id || id eq 'master'}">
									<input type="button" onclick="location.href='deleteCommunity.do?idx=${c.idx}'" value="삭제">
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			<input type="submit" value="글쓰기">
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />