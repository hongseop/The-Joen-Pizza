<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" href="./resources/css/bootstrap.css"
	rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>글목록</h3>
		<div class="container">
			
			<table class="table table-hover table-bordered">
				<tr class="info">
					<td align="center" width="50">번호</td>
					<td align="center" width="250">제목</td>
					<td align="center" width="50">조회수</td>
					<td align="center" width="100">작성일</td>
					<td align="center" width="100">작성자</td>
				</tr>
				<c:forEach var="QAVo" items="${list }">
					<tr>
						<td>${QAVo.QAboaNum }</td>
						<td><a href="QAlistAction?QAseq=${QAVo.QAboaNum }">${QAVo.QAboaTitle }</a>
							<c:if test="${QAVo.QAboaHit>=10 }">
								<img src="./resources/img/hot-icon.gif" width="1px"
									height="10px">
							</c:if></td>
						<td>${QAVo.QAboaHit }</td>
						<td>${QAVo.QAboaDate }</td>
						<td>${QAVo.userName }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="form-group">
				<form class="form-search" name="sch" action="search" method="post">
					<input class="span4 search-query" type="text" name="search">
					<button class="btn" type="submit">검색</button>
					<!-- <button class="btn"><a href="QAinsert" float="left">글쓰기</a></button> -->
					<input type="button" class="btn" value="글쓰기" onclick="location.href='http://localhost:8500/project/QAinsert'">
				</form>
				
			</div>
			
		</div>

		<div class="pagination">
			<ul>
				<c:if test="${startPage>10 }">
					<li class="disabled"><a
						href="QAlist?pageNum=${ startPage - 10 }${pageReturn}">[이전]</a></li>
				</c:if>

				<c:forEach var="i" begin="${startPage}" step="1" end="${endPage}">
					<li><a href="QAlist?pageNum=${ i }${pageReturn}">[${ i }]</a></li>
				</c:forEach>
				<c:if test="${endPage < pageCount}">
					<li><a href="QAlist?pageNum=${ startPage + 10 }${pageReturn}">[다음]</a></li>
				</c:if>
			</ul>
		</div>
	</center>
</body>
</html>