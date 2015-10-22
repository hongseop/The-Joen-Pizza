<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>23123</title>
</head>
<body>
<script type="text/javascript">
function loadList(data){
		
		if(data.RESULT == true){
			$(function () {
				var source   = $("#tmpl-orderList").html();
				var template = Handlebars.compile(source);
				var context	= {
					items: data.LIST
				};
				$('tbody[data-role=list]').html(template(context));
				$('.comment>strong').html(data.ORDER_CNT);
			});
		}
	}
</script>
	<div id="contents" class="type1">
			<span class="blind">본문</span>
			
			<h2 class="mypage">마이페이지 MYPAGE</h2>
			
			<ul class="tab-type">
				<li><a href="/mypage/myinfo.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage1_off.gif" alt="나의 피자헛 정보" /></a></li>
				<li class="on"><a href="/mypage/orderList.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage2_on.gif" alt="주문내역" /></a></li>
				<li><a href="/mypage/compliment.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage3_off.gif" alt="1:1상담내역" /></a></li>
				<li><a href="/mypage/coupon.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage4_off.gif" alt="쿠폰" /></a></li>
				<li><a href="/mypage/modify.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage5_off.gif" alt="회원정보 수7정" /></a></li>
			</ul>
			
			<h3><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/ti_h3_2.gif" alt="주문 내역" /></h3>
			
			<h4><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/ti_h4_7.gif" alt="나의 절약내역" /> <small>2012년 1월 1일부터 현재까지의 주문내역 기준이며 멤버십 등급 산정 기준횟수와 다를 수 있습니다.</small></h4>
			<table class="tbl-type">
			<caption>나의 주문내역</caption>
			<div class="hgroup">
				<h4><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/ti_h4_18.gif" alt="나의 인터넷 &amp; 모바일 주문내역" /></h4>
				<div class="strong"><strong>주문을 취소하고 싶다면?</strong> 피자헛은 모든제품이 주문 즉시 제조 됩니다. <span>지금 바로 매장에 전화해서 취소 가능한지 확인 후</span> 고객센터(080-500-5588)로 전화주세요.</div>
				<fieldset class="check"">
				<legend>유형 선택</legend>
					<label for="type1"><input type="checkbox" name="orderType" id="type1" value="" /> 전체</label>
					<label for="type2"><input type="checkbox" name="orderType" id="type2" value=""  /> 배달</label>
					<label for="type3"><input type="checkbox" name="orderType" id="type3" value=""  /> 포장</label>
				</fieldset>
				<p class="comment type2">총 <strong>6</strong>건</p>
			</div>
			<table class="tbl-type">
			<form name="f" method="post" action="orderList.do">
				<input type="hidden" name="pageNum"  value="1" />
				<input type="hidden" name="order" value="0"/>
			</form>
			<caption>나의 주문내역</caption>
				<thead>
					<tr>
						<th scope="col">주문일자</th>
						<th scope="col">구분</th>
						<th scope="col">주문형태</th>
						<th scope="col">주문상품</th>
						<th scope="col">주문매장</th>
						<th scope="col">할인 전 금액</th>
						<th scope="col">결제금액</th>
						<th scope="col">주문상태</th>
						<th scope="col">영수증</th>
						<th scope="col">간편 재주문</th>
						<th scope="col">내역숨김</th>
					</tr>
				</thead>
				<tbody data-role="list">
	

<h2>오더리스트 테스트</h2>
</body>
</html>