<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="./resources/css/calendar/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/calendar/jquery-1.9.1.min.js"></script>    
<script type="text/javascript" src="./resources/js/calendar/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="./resources/js/calendar/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript" src="./resources/js/calendar.js"></script>
<script> 
 function reload(menunum){ 
	 location.href="resInsert?menuNum="+menunum;} 
</script> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>예약</title>
</head>
<body>
<div class="container">
	<form action="resInsertAction" method="post">
		<center>
			<table class="table table-hover">
				<tr>
					<td><input type="hidden" name="userNum"	value="${user.userNum }"><b>주문자</b></td>
					<td><input class="span2" type="text" name="userName" value="${user.userName }"></td>
					<td rowspan=6><img src="./resources/img/pizza/${menu.menuNum }.JPG" width="500"
						height="350" border="0"></td>
				</tr>

				<tr>
					<td><b> 상품명</b></td>
						<td><select onChange="reload(menuNum.options[menuNum.selectedIndex].value)" class="span2" name="menuNum" >
							<option value="${menu.menuNum }">${menu.menuTitle }</option>
							<optgroup label="피자"> 
							<option value="201">씨푸드퐁듀</option>
							<option value="202">더블치즈버거</option>
							<option value="203">호박고구마</option>
							<option value="204">로맨틱콤보</option>
							<option value="205">통베이컨스테이크</option>
							<option value="206">베이컨포테이토</option>
							</optgroup>
							<optgroup label="세트">
							<option value="301">(씨퐁듀+콜라+파스타)세트</option>
							<option value="302">(더블즈+콜라+파스타)세트</option>
							<option value="303">(호박고+콜라+파스타)세트</option>
							<option value="304">(로맨보+콜라+파스타)세트</option>
							<option value="305">(통베컨+콜라+파스타)세트</option>
							<option value="306">(베컨포+콜라+파스타)세트</option>
							</optgroup>
							<optgroup label="사이드메뉴">
							<option value="401">씨푸드 파스타</option>
							<option value="402">치킨텐더</option>
							<option value="403">허니브레드</option>
							<option value="404">초콜릿 점보쿠키</option>
							</optgroup>
							<optgroup label="음료">
							<option value="501">사이다</option>
							<option value="502">환타</option>
							<option value="503">콜라</option>
							<option value="504">제로콜라</option>
							</optgroup>
					</select></td>

				</tr>
				<tr>
					<td><b> 가격</b></td>
					<td><input class="span2" type="text" name="resSum" value="${menu.menuPrice }" readonly="readonly">
					</td>
				</tr>

				<tr>
					<td><b>예약날짜</b></td>
					<td><input class="span2" type="text" name="resDate" id="datepicker1"></td>
				</tr>
			</table>
		</center>
		<p>
		<center>
			<table border="0" align="center">
				<tr>
					<td><input class="btn btn-primary"type="submit" value="주문하기">
					</td>
					<td><input class="btn" type="reset" value="  취소  "></td>
				</tr>
			</table>
		</center>
	</form>
</div>
</body>
</html>