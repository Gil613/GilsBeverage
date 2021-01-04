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
					<th>글 번호</th>
					<th>글 제목</th>
					<th>작성 일</th>
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
		<hr>
	</div>

	<!-- 칵테일 검색 -->
	<div>
		칵테일 게시판
		<table>
			<thead>
				<tr>
					<th scope="cols" id="th_0">글 번호</th>
					<th scope="cols" id="th_1">사 진</th>
					<th scope="cols" id="th_2">글 제목</th>
					<th scope="cols" colspan=2 id="th_3">작성 일</th>
				</tr>
			</thead>
			<c:forEach var="c" items="${bcs}">
				<tr>
					<td>${c.idx}</td>
					<td><c:if test="${c.filename ne 'space.jpg'}">
							<img id="img" src="./cocktail/${c.filename}" width="50"
								height="50" />
						</c:if></td>
					<td><a href="cocktail_content.do?idx=${c.idx}">${c.title}</a></td>
					<td>${c.regdate}</td>
					<c:if test="${id eq 'master'}">
						<th><input type="button"
							onclick="location.href='deleteCocktail.do?idx=${c.idx}'"
							value="삭제"></th>
					</c:if>
				</tr>
			</c:forEach>
		</table>
		<hr>
	</div>
	<!-- 커뮤니티 검색-->
	<div>
		커뮤니티 게시판
		<table border=1 width="500">
			<tr>
				<th>글 번호</th>
				<th>작성자</th>
				<th>사진</th>
				<th>글 제목</th>
				<th>작성 일</th>
			</tr>
			<c:forEach var="c" items="${bCs}">
				<tr>
					<td>${c.idx}</td>
					<td>${c.id}</td>
					<td><img id="img" src="./community/${c.filename}" width="50"
						height="50" /></td>
					<td><a href="community_content.do?idx=${c.idx}">${c.title}</a></td>
					<td>${c.regdate}</td>
					<c:if test="${c.id eq id || id eq 'master'}">
						<th><input type="button"
							onclick="location.href='deleteCommunity.do?idx=${c.idx}'"
							value="삭제"></th>
					</c:if>
				</tr>
			</c:forEach>

		</table>
		<hr>
	</div>
	<!-- 상품 검색-->
	<div>
		상품 게시판
		<table>
			<tr>
				<th>상품사진</th>
				<th>상품이름</th>
				<th>용량</th>
				<th>가격</th>
			</tr>
			<c:forEach items="${ps}" var="p">
				<tr>
					<th><img id="img" src="./product/${p.filename}" width="50"
						height="50" /></th>
					<th><a href="content.do?idx=${p.idx}">${p.pname}</a></th>
					<th>${p.capacity}</th>
					<th>${p.cost}</th>
					<c:if test="${id eq 'master'}">
						<th><input type="button"
							onclick="location.href='delete.do?idx=${p.idx}'" value="삭제"></th>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>

<c:import url="bottom.jsp" />
