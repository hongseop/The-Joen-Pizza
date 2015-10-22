<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<style type="text/css">
div#aside {
	width: 275px;
	height: 700px;
	float: left;
	background-color: yellow;
	position: fixed;
}

html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#wrapper {
	min-height: 100%;
	position: relative;
}

#header {
	background: #ededed;
	padding: 10px;
}

#content {
	padding-bottom: 100px; /* Height of the footer element */
}

#footer {
	background: #ffab62;
	width: 100%;
	height: 100px;
	position: absolute;
	bottom: 0;
	left: 0;
}
</style>
</head>
<body>
	<div id="wrapper">
			<jsp:include page="top.jsp"></jsp:include>
		<div id="content" >
			<jsp:include page="${bottom}"></jsp:include>
		</div>
		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
