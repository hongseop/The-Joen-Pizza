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
			<span class="blind">����</span>
			
			<h2 class="mypage">���������� MYPAGE</h2>
			
			<ul class="tab-type">
				<li><a href="/mypage/myinfo.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage1_off.gif" alt="���� ������ ����" /></a></li>
				<li class="on"><a href="/mypage/orderList.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage2_on.gif" alt="�ֹ�����" /></a></li>
				<li><a href="/mypage/compliment.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage3_off.gif" alt="1:1��㳻��" /></a></li>
				<li><a href="/mypage/coupon.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage4_off.gif" alt="����" /></a></li>
				<li><a href="/mypage/modify.do"><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/tab_mypage5_off.gif" alt="ȸ������ ��7��" /></a></li>
			</ul>
			
			<h3><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/ti_h3_2.gif" alt="�ֹ� ����" /></h3>
			
			<h4><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/ti_h4_7.gif" alt="���� ���೻��" /> <small>2012�� 1�� 1�Ϻ��� ��������� �ֹ����� �����̸� ����� ��� ���� ����Ƚ���� �ٸ� �� �ֽ��ϴ�.</small></h4>
			<table class="tbl-type">
			<caption>���� �ֹ�����</caption>
			<div class="hgroup">
				<h4><img src="https://cdn.pizzahut.co.kr/reno_pizzahut/images/mypage/ti_h4_18.gif" alt="���� ���ͳ� &amp; ����� �ֹ�����" /></h4>
				<div class="strong"><strong>�ֹ��� ����ϰ� �ʹٸ�?</strong> �������� �����ǰ�� �ֹ� ��� ���� �˴ϴ�. <span>���� �ٷ� ���忡 ��ȭ�ؼ� ��� �������� Ȯ�� ��</span> ������(080-500-5588)�� ��ȭ�ּ���.</div>
				<fieldset class="check"">
				<legend>���� ����</legend>
					<label for="type1"><input type="checkbox" name="orderType" id="type1" value="" /> ��ü</label>
					<label for="type2"><input type="checkbox" name="orderType" id="type2" value=""  /> ���</label>
					<label for="type3"><input type="checkbox" name="orderType" id="type3" value=""  /> ����</label>
				</fieldset>
				<p class="comment type2">�� <strong>6</strong>��</p>
			</div>
			<table class="tbl-type">
			<form name="f" method="post" action="orderList.do">
				<input type="hidden" name="pageNum"  value="1" />
				<input type="hidden" name="order" value="0"/>
			</form>
			<caption>���� �ֹ�����</caption>
				<thead>
					<tr>
						<th scope="col">�ֹ�����</th>
						<th scope="col">����</th>
						<th scope="col">�ֹ�����</th>
						<th scope="col">�ֹ���ǰ</th>
						<th scope="col">�ֹ�����</th>
						<th scope="col">���� �� �ݾ�</th>
						<th scope="col">�����ݾ�</th>
						<th scope="col">�ֹ�����</th>
						<th scope="col">������</th>
						<th scope="col">���� ���ֹ�</th>
						<th scope="col">��������</th>
					</tr>
				</thead>
				<tbody data-role="list">
	

<h2>��������Ʈ �׽�Ʈ</h2>
</body>
</html>