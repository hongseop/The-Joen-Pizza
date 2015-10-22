<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>음료메뉴</title>
<style type="text/css">
div#list_set {
	margin-left: 40px;
	position: relative;
	top: 0px;
	left: 100px;
	background-color: #fff;
	width: 800px;
}

.imgs{
display:block;
margin-left: 15;
margin-right:0;
   } 




div.box {
	width: 210px;
 /*	height: 40px; */
	overflow:hidden;
	white-space:nowrap;
	text-overflow:ellipsis;
	background-color: #14B343;
	text-align:center;
	padding: 7px 0;
	font-size: 17px;
	color: #fff;
	margin-left: 15;
	font-weight: bold;
	}
div.dk1 {
    width: 240px;
	padding:10px;
	/* margin-left: 0px; */ 
    /* margin-bottom: 0px; */
    float: left;
    border: 3px solid #876290;
	/* background-color: white; */ 
    }
div.dk2 {
    width: 240px;
	padding:10px;
	/* margin-left: 0px; */ 
    /* margin-bottom: 0px; */
    float: left;
    border: 3px solid #876290;
	/* background-color: white; */ 
    }
div.dk3 {
    width: 240px;
	padding:10px;
	/* margin-left: 0px; */ 
    /* margin-bottom: 0px; */
     float: left; 
    border: 3px solid #876290;
	/* background-color: white; */
	} 
div.dk4 { 
    width: 240px;
	padding:10px;
	/* margin-left: 0px; */ 
    /* margin-bottom: 0px; */
     
    border: 3px solid #876290;
	/* background-color: white; */ 		
         }   
</style>
</head>
<body>
	<div id="list_set">
	<div class="dk1">
	<div class="box">사이다</div>
	<p class="imgs">
	<a href="resInsert">
	<img src="./resources/img/drink/cider.JPG" alt="콜라" />
	</a>
	</p>
     </div>
	<div class="dk2">
	<div class="box">환타</div>
	<p class="imgs">
	<a href="resInsert">
	<img src="./resources/img/drink/fanta.JPG" alt="사이다" />
	</a>
	</p>
     </div>
    
    <div class="dk3">
	<div class="box">콜라</div>
	<p class="imgs">
	<a href="resInsert">
	<img src="./resources/img/drink/cola.JPG" alt="콜라" />
	</a>
	</p>
     </div>
     <div class="dk4">
	<div class="box">제로콜라</div>
	<p class="imgs">
	<a href="resInsert">
	<img src="./resources/img/drink/zerocola.JPG" alt="제로콜라" />
	</a>
	</p>
     </div></div>

</body>
</html>