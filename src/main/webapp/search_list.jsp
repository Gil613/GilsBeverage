<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/search.css">
<title>검색 게시판</title>
</head>

<body>
<div align="center">
	<!-- 공지 검색-->
	<div>
		<div id="title" align="center">공지 게시판</div><br>
		<table class="table_0">
			<thead>
				<tr>
					<th scope="row" width="100px">글 번호</th>
					<th scope="row" width="200px">글 제목</th>
					<th scope="row" width="100px">작성 일</th>
				</tr>
			</thead>

			<c:forEach var="n" items="${bns}">
				<tr>
					<td>${n.idx}</td>
					<td><a href="notice_content.do?idx=${n.idx}">${n.title}</a></td>
					<td>${n.regdate}</td>
				</tr>
			</c:forEach>
		</table>
		<hr width=1000px>
	</div>

	<!-- 칵테일 검색 -->
	<div>
	  <div id="title" align="center">칵테일 게시판</div><br>
		<table class="table_0">
			<thead>
				<tr>
					<th scope="row" width="100px">글 번호</th>
					<th scope="row" width="100px">사 진</th>
					<th scope="row" width="200px">글 제목</th>
					<th scope="row" width="100px">작성 일</th>
				</tr>
			</thead>
			<c:forEach var="c" items="${bcs}">
				<tr>
					<td>${c.idx}</td>
					<td><c:if test="${c.filename ne 'space.jpg'}">
							<img id="img" src="./cocktail/${c.filename}" />
						</c:if></td>
					<td><a href="cocktail_content.do?idx=${c.idx}">${c.title}</a></td>
					<td>${c.regdate}
					<c:if test="${id eq 'master'}">
						<input type="button"
							onclick="location.href='deleteCocktail.do?idx=${c.idx}'"
							value="삭제">
					</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
		<hr width=1000px>
	</div>
	<!-- 커뮤니티 검색-->
	<div>
	  <div id="title" align="center">커뮤니티 게시판</div><br>
		<table class="table_0">
			<tr>
				<th scope="row" width="100px">글 번호</th>
				<th scope="row" width="100px">작성자</th>
				<th scope="row" width="100px">사진</th>
				<th scope="row" width="200px">글 제목</th>
				<th scope="row" width="100px">작성 일</th>
			</tr>
			<c:forEach var="c" items="${bCs}">
				<tr>
					<td>${c.idx}</td>
					<td>${c.id}</td>
					<td><img id="img" src="./community/${c.filename}" width="50"
						height="50" /></td>
					<td><a href="community_content.do?idx=${c.idx}">${c.title}</a></td>
					<td>${c.regdate}
					<c:if test="${c.id eq id || id eq 'master'}">
						&nbsp;<input type="button"
							onclick="location.href='deleteCommunity.do?idx=${c.idx}'"
							value="삭제"></c:if>
					</td>
				</tr>
			</c:forEach>

		</table>
		<hr width=1000px>
	</div>
	<!-- 상품 검색-->
	<div>
	  <div id="title" align="center">상품 게시판</div><br>
		<table class="table_0">
			<tr>
				<th width="100px">상품사진</th>
				<th width="200px">상품이름</th>
				<th width="100px">용량</th>
				<th width="100px">가격</th>
			</tr>
			<c:forEach items="${ps}" var="p">
				<tr>
					<td><img id="img" src="./product/${p.filename}" width="50"
						height="50" /></td>
					<td><a href="content.do?idx=${p.idx}">${p.pname}</a></td>
					<td>${p.capacity}</td>
					<td>${p.cost}
					<c:if test="${id eq 'master'}">
						&nbsp; <input type="button"
							onclick="location.href='delete.do?idx=${p.idx}'" value="삭제">
					</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
		<div id="bottom_line"></div>
	</div>
</div>
</body>
</html>

<c:import url="bottom.jsp" />
