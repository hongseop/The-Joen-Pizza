<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css"
	href="./resources/css/calendar/jquery-ui-1.10.3.custom.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="./resources/js/calendar/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="./resources/js/calendar/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript"
	src="./resources/js/calendar/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript" src="./resources/js/calendar.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

	<center>
		<div style="margin:10;">
			<table border="0" class="table table-hover">
				<tr class="warning">
					<td class="div">주문번호</td>
					<td class="div">제품명(코드)</td>
					<td class="div">예약날짜</td>
					<td class="div">회원이름</td>
					<td class="div">전화번호</td>
					<td class="div">이메일</td>
					<td class="div">결제금액</td>
					<td class="div">결제시간</td>
					<td class="div">&nbsp;</td>
				</tr>
				<%
					int i = 0;
				%>
				<c:forEach var="list" items="${list}">
					<form action="resUpdate" metdod="get">
						<%
							i++;
								String datepicker = "datepicker" + i;
						%>
						<input class="div" type="hidden" name="userNum"
							value="${list.userNum }">
						<tr>
							<td><input class="div" type="text" name="resNum"
								value="${list.resNum }" readonly="readonly"></td>
							<td><select class="div" name="roomNum">
									<option value="${list.roomNum }">${list.roomNum }</option>
									<optgroup label="피자">
										<option value="201">씨푸드퐁듀(code=201)</option>
										<option value="202">더블치즈버거(code=202)</option>
										<option value="203">호박고구마(code=203)</option>
										<option value="204">로맨틱콤보(code=204)</option>
										<option value="205">통베이컨스테이크(code=205)</option>
										<option value="206">베이컨포테이토(code=206)</option>
									</optgroup>
									<optgroup label="세트">
										<option value="301">(씨퐁듀+콜라+파스타)세트(code=301)</option>
										<option value="302">(더블즈+콜라+파스타)세트(code=302)</option>
										<option value="303">(호박고+콜라+파스타)세트(code=303)</option>
										<option value="304">(로맨보+콜라+파스타)세트(code=304)</option>
										<option value="305">(통베컨+콜라+파스타)세트(code=305)</option>
										<option value="306">(베컨포+콜라+파스타)세트(code=306)</option>
									</optgroup>
									<optgroup label="사이드메뉴">
										<option value="401">씨푸드 파스타(code=401)</option>
										<option value="402">치킨텐더(code=402)</option>
										<option value="403">허니브레드(code=403)</option>
										<option value="404">초콜릿 점보쿠키(code=404)</option>
									</optgroup>
									<optgroup label="음료">
										<option value="501">사이다(code=501)</option>
										<option value="502">환타(code=502)</option>
										<option value="503">콜라(code=503)</option>
										<option value="504">제로콜라(code=504)</option>
									</optgroup>
							</select></td>
							<td><input class="div" type="text" name="resDate"
								value="${list.resDate}" id="<%=datepicker%>"></td>
							<td><input class="div" type="text" name="userName"
								value="${list.userName }"></td>
							<td><input class="div" type="text" name="userTel"
								value="${list.userTel }" readonly="readonly"></td>
							<td><input class="div" type="text" name="userEmail"
								value="${list.userEmail }" readonly="readonly"></td>
							<td><input class="div" type="text" name="resSum"
								value="${list.resSum }" readonly="readonly"></td>
							<td><input class="div" type="text" name="resTime"
								value="${list.resTime}" readonly="readonly"></td>
							<td class="div"><input class="btn" type="submit"
								value="주문변경"><br> <input class="btn" type="button"
								value="주문취소"
								onclick="location.href='resDel?resNum=${list.resNum}'">
							</td>
						</tr>
					</form>
				</c:forEach>

			</table>
		</div>
	</center>
</body>
</html>