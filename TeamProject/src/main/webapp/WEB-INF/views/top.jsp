<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>�� ���� ����</title>
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
				<a class="brand" href="main">Ȩ����</a>
				<div class="nav-collapse collapse">
					<ul class="nav">

						<li><a class="dropdown" href="pizzaOne">���ڸ޴�</a></li>
						<!-- <li><a href="Restaurant">Restaurant</a></li>
									<li><a href="skyLounge">SkyLounge</a></li>
									<li><a href="where">ã�ƿ��ô� ��</a></li>
									<li><a href="cart_support">��ٱ��� �����׽�Ʈ ������</a></li> -->

						<li><a class="dropdown" href="pizzaSet">��Ʈ�޴�</a></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">���̵�&����<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="side">���̵�޴�</a></li>
								<li><a href="drink">����޴�</a></li>
							</ul></li>
						<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Room <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="floor?floor=2">2��</a></li>
									<li><a href="floor?floor=3">3��</a></li>
									<li><a href="floor?floor=4">4��</a></li>
									<li><a href="floor?floor=5">5��</a></li>
								</ul></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">�ֹ�<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="calendar">�ֹ�����</a></li>
								<li><a href="resInsert">�ֹ��ϱ�</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">�Խ���<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="boardList">����</a></li>
								<li><a href="QAlist">Q&A�Խ���</a></li>
							</ul></li>

						<c:choose>
							<c:when test="${userNum==null}">
					</ul>
					<form class="navbar-form pull-right" action="login" method="post">
						<input class="span2" type="text" placeholder="ID" name="userId">
						<input class="span2" type="password" placeholder="Password"
							name="userPwd">
						<button type="submit" class="btn">�α���</button>
						<button type="button" class="btn"
							onclick="location.href='register'">ȸ������</button>
					</form>
					</c:when>
					<c:when test="${admin=='y'}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">������ ������<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="userList">ȸ������</a></li>
								<li><a href="resList">�ֹ�����</a></li>
							</ul>
							</ul>
							<form class="navbar-form pull-right">
								<button type="button" class="btn"
									onclick="location.href='logout'">�α׾ƿ�</button>
							</form>
					</c:when>
					<c:otherwise>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">���� ������<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="myInfo">ȸ������</a></li>
								<li><a href="myResList">�ֹ�����</a></li>
							</ul></li>
						</ul>
						<form class="navbar-form pull-right">
							<button type="button" class="btn"
								onclick="location.href='logout'">�α׾ƿ�</button>
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
