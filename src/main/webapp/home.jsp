<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/home.css">
<img id="main_img" src="./img/main_3.jpeg">


<c:import url="top.jsp" />

<style type="text/css"> 
	a { text-decoration:none } 
	a:link { color:black }
	a:visited { color:black }
</style> 

	<div id=search_text>
		검색하기
	</div>
		<div id=link_text>
			<a href="vodka.do">Vodka</a>&emsp;&emsp;&emsp;&emsp;&emsp;
			<a href="whisky.do">Whisky</a>&emsp;&emsp;&emsp;&emsp;&emsp;
			<a href="brandy.do">Brandy</a>&emsp;&emsp;&emsp;&emsp;&emsp;
			<a href="tequila.do">Tequila</a>&emsp;&emsp;&emsp;&emsp;&emsp;
			<a href="gin.do">Gin</a>&emsp;&emsp;&emsp;&emsp;&emsp;
			<a href="lw.do">Liquor/Wine</a>
		</div>
		
		<div id="last_text">
			Gil's Beverage Shop은 신뢰와 성실을 바탕으로 1993년도부터 장사하였습니다.
		</div>

<c:import url="bottom.jsp" />