<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	function functionK() {
		if (f1.title.value == "") {
			swal("글 제목을 입력해주세요!", "error");
			f1.title.value = "";
			f1.title.focus();
			return false;
		}

		if (f1.content.value == "") {
			swal("글 내용을 입력해주세요!", "error");
			f1.content.value = "";
			f1.content.focus();
			return false;
		}
	}
</script>
<head>
<link rel="stylesheet" href="./css/notice_register.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div align="center" id="body">
		<div id="title">칵테일 등록</div>
		<br>
		<form action="insertCommunity.do" method="post"
			enctype="multipart/form-data" name="f1"
			onSubmit="return functionK();">
			<input type="hidden" name="flag" value="community"> <input
				type="hidden" name="id" id="id" value="${sessionScope.id}">

			<table class="table_0">
				<tr>
					<td id="table_text_0">사진</td>
					<td><input type="file" name="uploadFile"></td>
				</tr>

				<tr>
					<td id="table_text_1">제목</td>
					<td><input type="text" name="title"></td>
				</tr>

				<tr>
					<td id="table_text_2">내용</td>
					<td><textarea name="content" cols=40 rows=10></textarea></td>
				</tr>

				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="글 등록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />