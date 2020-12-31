<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/modify.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div align="center" id="body">
	<div id="title">상품 등록</div><br>
		<form action="update.do" method="post" enctype="multipart/form-data">
		<table class="table_0">
		<input type="hidden" name="idx" value="${m.idx}">
			<tr><td>사진</td><td><img id="img" src="./product/${m.filename}"/>
			<br>
			<input type="file" name="uploadFile" ></td></tr>
			
			<tr>
			<td id="table_text_1">이름</td>
			<td>
			<select name="ptype">
			<option value="보드카" <c:if test="${m.ptype=='보드카'}">selected</c:if>>보드카</option>
			<option value="데킬라"<c:if test="${m.ptype=='데킬라'}">selected</c:if>>데킬라</option>
			<option value="진"<c:if test="${m.ptype=='진'}">selected</c:if>>진</option>
			<option value="브랜디"<c:if test="${m.ptype=='브랜디'}">selected</c:if>>브랜디</option>
			<option value="위스키" <c:if test="${m.ptype=='위스키'}">selected</c:if>>위스키</option>
			<option value="기타주류"<c:if test="${m.ptype=='기타주류'}">selected</c:if>>기타주류</option>
			</select>
			<input type="text" name="pname" value="${m.pname}">
			</td>
			</tr>
			
			<tr><td id="table_text_2">내용</td><td><textarea name="pcontent" cols=40 rows=10>${m.pcontent}</textarea></td></tr>
			
			<tr><td id="table_text_3">용량</td><td><input type="text" name="capacity" value="${m.capacity}">ml</td></tr>
			
			<tr><td id="table_text_4">가격</td><td><input type="text" name="cost" value="${m.cost}">원</td></tr>
			<tr><td align="center" colspan="2"><input type="submit" value="수정"></td></tr>
		</table>
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />