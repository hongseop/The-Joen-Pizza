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
<title>����</title>
</head>
<body>
<div class="container">
	<form action="resInsertAction" method="post">
		<center>
			<table class="table table-hover">
				<tr>
					<td><input type="hidden" name="userNum"	value="${user.userNum }"><b>�ֹ���</b></td>
					<td><input class="span2" type="text" name="userName" value="${user.userName }"></td>
					<td rowspan=6><img src="./resources/img/pizza/${menu.menuNum }.JPG" width="500"
						height="350" border="0"></td>
				</tr>

				<tr>
					<td><b> ��ǰ��</b></td>
						<td><select onChange="reload(menuNum.options[menuNum.selectedIndex].value)" class="span2" name="menuNum" >
							<option value="${menu.menuNum }">${menu.menuTitle }</option>
							<optgroup label="����"> 
							<option value="201">��Ǫ������</option>
							<option value="202">����ġ�����</option>
							<option value="203">ȣ�ڰ���</option>
							<option value="204">�θ�ƽ�޺�</option>
							<option value="205">�뺣����������ũ</option>
							<option value="206">��������������</option>
							</optgroup>
							<optgroup label="��Ʈ">
							<option value="301">(������+�ݶ�+�Ľ�Ÿ)��Ʈ</option>
							<option value="302">(������+�ݶ�+�Ľ�Ÿ)��Ʈ</option>
							<option value="303">(ȣ�ڰ�+�ݶ�+�Ľ�Ÿ)��Ʈ</option>
							<option value="304">(�θǺ�+�ݶ�+�Ľ�Ÿ)��Ʈ</option>
							<option value="305">(�뺣��+�ݶ�+�Ľ�Ÿ)��Ʈ</option>
							<option value="306">(������+�ݶ�+�Ľ�Ÿ)��Ʈ</option>
							</optgroup>
							<optgroup label="���̵�޴�">
							<option value="401">��Ǫ�� �Ľ�Ÿ</option>
							<option value="402">ġŲ�ٴ�</option>
							<option value="403">��Ϻ극��</option>
							<option value="404">���ݸ� ������Ű</option>
							</optgroup>
							<optgroup label="����">
							<option value="501">���̴�</option>
							<option value="502">ȯŸ</option>
							<option value="503">�ݶ�</option>
							<option value="504">�����ݶ�</option>
							</optgroup>
					</select></td>

				</tr>
				<tr>
					<td><b> ����</b></td>
					<td><input class="span2" type="text" name="resSum" value="${menu.menuPrice }" readonly="readonly">
					</td>
				</tr>

				<tr>
					<td><b>���೯¥</b></td>
					<td><input class="span2" type="text" name="resDate" id="datepicker1"></td>
				</tr>
			</table>
		</center>
		<p>
		<center>
			<table border="0" align="center">
				<tr>
					<td><input class="btn btn-primary"type="submit" value="�ֹ��ϱ�">
					</td>
					<td><input class="btn" type="reset" value="  ���  "></td>
				</tr>
			</table>
		</center>
	</form>
</div>
</body>
</html>