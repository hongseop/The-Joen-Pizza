<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>더 조은 피자</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-bottom: 40px;
}
</style>
<!-- <link href="./resources/css/bootstrap-responsive.css" rel="stylesheet"> -->
</head>

<body>

	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="main">홈으로</a>
				<div class="nav-collapse collapse">
					<ul class="nav">

						<li><a class="dropdown" href="pizzaOne">피자메뉴</a></li>
						<!-- <li><a href="Restaurant">Restaurant</a></li>
									<li><a href="skyLounge">SkyLounge</a></li>
									<li><a href="where">찾아오시는 길</a></li>
									<li><a href="cart_support">장바구니 연동테스트 페이지</a></li> -->

						<li><a class="dropdown" href="pizzaSet">세트메뉴</a></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">사이드&음료<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="side">사이드메뉴</a></li>
								<li><a href="drink">음료메뉴</a></li>
							</ul></li>
						<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Room <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="floor?floor=2">2층</a></li>
									<li><a href="floor?floor=3">3층</a></li>
									<li><a href="floor?floor=4">4층</a></li>
									<li><a href="floor?floor=5">5층</a></li>
								</ul></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">주문<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="calendar">주문일정</a></li>
								<li><a href="resInsert">주문하기</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">게시판<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="boardList">공지</a></li>
								<li><a href="QAlist">Q&A게시판</a></li>
							</ul></li>

						<c:choose>
							<c:when test="${userNum==null}">
					</ul>
					<form class="navbar-form pull-right" action="login" method="post">
						<input class="span2" type="text" placeholder="ID" name="userId">
						<input class="span2" type="password" placeholder="Password"
							name="userPwd">
						<button type="submit" class="btn">로그인</button>
						<button type="button" class="btn"
							onclick="location.href='register'">회원가입</button>
					</form>
					</c:when>
					<c:when test="${admin=='y'}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">관리자 페이지<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="userList">회원관리</a></li>
								<li><a href="resList">주문내역</a></li>
							</ul>
							</ul>
							<form class="navbar-form pull-right">
								<button type="button" class="btn"
									onclick="location.href='logout'">로그아웃</button>
							</form>
					</c:when>
					<c:otherwise>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">마이 페이지<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="myInfo">회원정보</a></li>
								<li><a href="myResList">주문내역</a></li>
							</ul></li>
						</ul>
						<form class="navbar-form pull-right">
							<button type="button" class="btn"
								onclick="location.href='logout'">로그아웃</button>
						</form>
					</c:otherwise>
					</c:choose>

				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="./resources/js/bootstrap.js"></script>
</body>
</html>
