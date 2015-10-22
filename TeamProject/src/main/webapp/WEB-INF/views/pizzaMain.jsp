<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main</title>
<link type="text/css" href="./resources/css/main.css" rel="stylesheet" />
<link type="text/css" href="./resources/css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body style="background-image: url(./resources/img/background/background_black.jpg)">
	<div class="container">
		<center>
			<table border="0" width="728">
				<tr>
					<td colspan="2" align="center"></td>
				</tr>
				<tr>
					<td align="left" colspan="2"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<!-- ---------------------------------------------------------------------------->
						<div class="span9">
							<div id="myCarousel" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<div class="item active">
										<img src="./resources/img/pizza/pizzafront_1.JPG" alt="">
									</div>
									<div class="item">
										<img src="./resources/img/pizza/pizzafront_2.JPG" alt="">
									</div>
									<div class="item">
										<img src="./resources/img/pizza/pizzafront_3.JPG" alt="">
									</div>
									<div class="item">
										<img src="./resources/img/pizza/pizzafront_4.JPG" alt="">
									</div>
								</div>
								<a class="left carousel-control" href="#myCarousel"
									data-slide="prev">&rsaquo;</a> <a
									class="right carousel-control" href="#myCarousel"
									data-slide="next">&rsaquo;</a>
							</div>
						</div> <!-- ---------------------------------------------------------------------------->
					</td>
				</tr>
			</table>
		</center>
		<center>
			<div>
				<a href="resInsert"><img
					src="./resources/img/pizza/pizzafront.JPG"></a>
			</div>
		</center>
	</div>
	<script>
		!function($) {
			$(function() {
				// carousel demo
				$('#myCarousel').carousel()
			})
		}(window.jQuery)
	</script>
</body>
</html>