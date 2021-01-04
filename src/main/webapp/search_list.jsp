<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>검색 게시판</title>
</head>

<body>
<!-- 공지 검색-->
	<div>
	공지 게시판
	<table>
		<thead>
			<tr>
				<th scope="cols" id="th_0">글 번호</th>
				<th scope="cols" id="th_1">글 제목</th>
				<th scope="cols" id="th_2">작성 일</th>
			</tr>
		</thead>
		
		<c:forEach var="n" items="${notice}">
			<tr>
				<td>${n.idx}</td>
				<td><a href="notice_content.do?idx=${n.idx}">${n.title}</a></td>
				<td>${n.regdate}
				</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	</div>
	<!-- 칵테일 검색 -->
	<div>
	칵테일 게시판
	<table>
		<thead>
			<tr>
				<th scope="cols" id="th_0">글 번호</th>
				<th scope="cols" id="th_1">글 제목</th>
				<th scope="cols" id="th_2">작성 일</th>
			</tr>
		</thead>
		
		<c:forEach var="n" items="${notice}">
			<tr>
				<td>${n.idx}</td>
				<td><a href="notice_content.do?idx=${n.idx}">${n.title}</a></td>
				<td>${n.regdate}
				</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	</div>
<!-- 커뮤니티 검색-->
	<div>
	커뮤니티 게시판
	<table>
		<thead>
			<tr>
				<th scope="cols" id="th_0">글 번호</th>
				<th scope="cols" id="th_1">글 제목</th>
				<th scope="cols" id="th_2">작성 일</th>
			</tr>
		</thead>
		
		<c:forEach var="n" items="${notice}">
			<tr>
				<td>${n.idx}</td>
				<td><a href="notice_content.do?idx=${n.idx}">${n.title}</a></td>
				<td>${n.regdate}
				</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	</div>
	<!-- 상품 검색-->
	<div>
	상품 게시판
	<table>
		<thead>
			<tr>
				<th scope="cols" id="th_0">글 번호</th>
				<th scope="cols" id="th_1">글 제목</th>
				<th scope="cols" id="th_2">작성 일</th>
			</tr>
		</thead>
		
		<c:forEach var="n" items="${notice}">
			<tr>
				<td>${n.idx}</td>
				<td><a href="notice_content.do?idx=${n.idx}">${n.title}</a></td>
				<td>${n.regdate}
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>

</body>
</html>

<c:import url="bottom.jsp" /> 