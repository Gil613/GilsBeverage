<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="./css/tb.css">

<style type="text/css"> 
	a { text-decoration:none } 
	a:link { color:black }
	a:visited { color:black }
</style> 

<div id="basic_top">
<div id="text">
	<a href="home.jsp">홈으로</a>&emsp;&emsp;&emsp;&emsp;&emsp;
	<a href="noticeList.do">공지</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<a href="cocktailList.do">칵테일</a> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<a href="">커뮤니티</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<c:if test="${id != null}">
		<a href="editUser.do">회원정보수정</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<a href="logout.do">${id}님 로그아웃</a>
	</c:if>
	<c:if test="${id == null}">
		<a href="login.jsp">로그인</a>
	</c:if>
	<!-- master 관리자 아이디만 등록노출 -->
	<c:if test="${id eq 'master'}">
	<hr width=100%>
		<a href="product_register.jsp">상품등록</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<a href="member_list.do">회원관리</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	</c:if>
	<hr id="hr">
</div>
</div>