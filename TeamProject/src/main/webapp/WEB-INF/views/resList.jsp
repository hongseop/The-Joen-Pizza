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
					<td class="div">�ֹ���ȣ</td>
					<td class="div">��ǰ��(�ڵ�)</td>
					<td class="div">���೯¥</td>
					<td class="div">ȸ���̸�</td>
					<td class="div">��ȭ��ȣ</td>
					<td class="div">�̸���</td>
					<td class="div">�����ݾ�</td>
					<td class="div">�����ð�</td>
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
									<optgroup label="����">
										<option value="201">��Ǫ������(code=201)</option>
										<option value="202">����ġ�����(code=202)</option>
										<option value="203">ȣ�ڰ���(code=203)</option>
										<option value="204">�θ�ƽ�޺�(code=204)</option>
										<option value="205">�뺣����������ũ(code=205)</option>
										<option value="206">��������������(code=206)</option>
									</optgroup>
									<optgroup label="��Ʈ">
										<option value="301">(������+�ݶ�+�Ľ�Ÿ)��Ʈ(code=301)</option>
										<option value="302">(������+�ݶ�+�Ľ�Ÿ)��Ʈ(code=302)</option>
										<option value="303">(ȣ�ڰ�+�ݶ�+�Ľ�Ÿ)��Ʈ(code=303)</option>
										<option value="304">(�θǺ�+�ݶ�+�Ľ�Ÿ)��Ʈ(code=304)</option>
										<option value="305">(�뺣��+�ݶ�+�Ľ�Ÿ)��Ʈ(code=305)</option>
										<option value="306">(������+�ݶ�+�Ľ�Ÿ)��Ʈ(code=306)</option>
									</optgroup>
									<optgroup label="���̵�޴�">
										<option value="401">��Ǫ�� �Ľ�Ÿ(code=401)</option>
										<option value="402">ġŲ�ٴ�(code=402)</option>
										<option value="403">��Ϻ극��(code=403)</option>
										<option value="404">���ݸ� ������Ű(code=404)</option>
									</optgroup>
									<optgroup label="����">
										<option value="501">���̴�(code=501)</option>
										<option value="502">ȯŸ(code=502)</option>
										<option value="503">�ݶ�(code=503)</option>
										<option value="504">�����ݶ�(code=504)</option>
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
								value="�ֹ�����"><br> <input class="btn" type="button"
								value="�ֹ����"
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