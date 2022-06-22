<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="style.css">

<style>
header {
	background-color: lightgrey;
	height: 100px;
}

nav {
	background-color: #339999;
	color: white;
	width: 200px;
	height: 100%;
	float: left;
}

section {
	width: 200px;
	text-align: left;
	float: left;
	padding: 10px;
}

header, nav, section, footer {
	text-align: center;
}

header, footer {
	line-height: 100px;
}

nav, section {
	line-height: 240px;
}

td {
	padding: 30px;
}

.tr {
	height: 5px;
}

.search-txt {
	width: 500px;
}

#searchinput {
	width: 500px;
	height: 30px;
}

.h1 {
	width: 300px;
	height: 100px;
}

.tb {
	width: 600px;
}

.wrap {
	max-width: 100%;
	margin: 50px auto;
	background: #f8f8f8;
}

/* 가로 스크롤 적용 */
.scroll__wrap {
	overflow-x: auto;
	white-space: nowrap;
	font-size: 0
}

.scroll—element {
	display: inline-block;
	width: 150px;
	height: 150px;
	border: 2px solid #222;
	background: #fff;
	font-size: 16px;
	line-height: 150px;
	text-align: center;
}

.scroll—element+.scroll—element {
	margin-left: 15px;
}

/*슬라이드 부분*/
.slider {
	width: 500px;
	height: 450px;
	position: relative;
	margin: 0 auto;
	overflow: hidden; /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
}

.slider input[type=radio] {
	display: none;
}

.img1 {
	width: 300px;
}

ul.imgs {
	padding: 0;
	margin: 0;
	list-style: none;
}

ul.imgs li {
	position: absolute;
	left: 640px;
	transition-delay: 0.5s;
	/* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
	padding: 0;
	margin: 0;
}

.bullets {
	position: absolute;
	left: 30%;
	transform: translateX(-50%);
	bottom: 1px;
	z-index: 2;
}

.bullets label {
	display: inline-block;
	border-radius: 50%;
	background-color: rgba(0, 0, 0, 0.55);
	width: 20px;
	height: 20px;
	cursor: pointer;
}

/* 현재 선택된 불릿 배경 흰색으로 구분 표시 */
.slider input[type=radio]:nth-child(1):checked ~.bullets>label:nth-child(1)
	{
	background-color: #FF0000;
}

.slider input[type=radio]:nth-child(2):checked ~.bullets>label:nth-child(2)
	{
	background-color: #FF0000;
}

.slider input[type=radio]:nth-child(3):checked ~.bullets>label:nth-child(3)
	{
	background-color: #FF0000;
}

.slider input[type=radio]:nth-child(4):checked ~.bullets>label:nth-child(4)
	{
	background-color: #FF0000;
}

.slider input[type=radio]:nth-child(1):checked ~ul.imgs>li:nth-child(1)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}

.slider input[type=radio]:nth-child(2):checked ~ul.imgs>li:nth-child(2)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}

.slider input[type=radio]:nth-child(3):checked ~ul.imgs>li:nth-child(3)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}

.slider input[type=radio]:nth-child(4):checked ~ul.imgs>li:nth-child(4)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}

.보더확인 {
	border: 1px solid;
}
</style>

<title></title>
</head>
<body>
	<header>
		<div align="left">
			<table>
				<tr>
					<td>
						<h1 class="h1">
							&nbsp;&nbsp;<a href="home">칵테일 백과사전</a>
						</h1>
					</td>
					<td>

						<div id="cover">
							<form method="get" action="">
								<div class="tb">
									<input id=searchinput type="text" placeholder="Search" required>

									<button type="submit">검색</button>
									</br>

								</div>
							</form>
						</div>

					</td>
					<td><a href="login">로그인</a> <a href="ModifyMember"
						onClick="alert('비밀번호 재입력')">회원정보 수정</a></br>
						<button>회원정보</button></td>
				</tr>
			</table>
		</div>
	</header>

	<nav>
		<form>
			<button type="submit" formaction="showAll">showAll</button>
			<br>
			<button type="submit" formaction="favorites">favorites</button>
			<br>
			<button type="submit" formaction="findShop">칵테일바 찾기</button>
			<br>
			<button type="submit" formaction="board">게시판</button>
		</form>
	</nav>

	<section>
		<table>
			<tr>
				<td>
					<table>
						<tr class="tr">
							<td><br> <br>
								<table>
									<tr>
										<td align="center">
											<div class="slider">
												<input type="radio" name="slide" id="slide1" checked>
												<input type="radio" name="slide" id="slide2"> <input
													type="radio" name="slide" id="slide3"> <input
													type="radio" name="slide" id="slide4">
												<ul id="imgholder" class="imgs">
													<%-- <li><img src="${urlHome }resources/img/풍경1 - 복사본.jpeg"></li>
						<li><img src="${urlHome }resources/img/풍경2 - 복사본.jpeg"></li>
						<li><img src="${urlHome }resources/img/풍경3 - 복사본.jpeg"></li>
						<li><img src="${urlHome }resources/img/풍경4 - 복사본.jpeg"></li> --%>
													<li><img src="img/jin.jpeg" class="img1"> </br> <b>진</b>
														<p>보드카 No.1</p> </a></li>
													<li><a href=""> <img src=""> <b>워커</b>
															<p>진의 짝꿍</p>
													</a></li>
													<li><a href=""> <img src=""> <b>베르무트</b>
															<p>뇸</p>
													</a></li>
													<li><a href=""> <img src=""> <b>코른</b>
															<p>이건 잘,,</p>
													</a></li>
												</ul>
												<br>
												<p></p>
												<div class="bullets">
													<label for="slide1">&nbsp;</label> <label for="slide2">&nbsp;</label>
													<label for="slide3">&nbsp;</label> <label for="slide4">&nbsp;</label>
												</div>
											</div>
										</td>
									</tr>
								</table></td>
						</tr>
					</table>
				</td>
				<td>
					<table>
				
			<tr class="tr">
				<td>
					<p>여기 하나</p>
				</td>
			</tr>
			<tr>
				<td>
					<div class="wrap">
						<div class="scroll__wrap">
							<div class="scroll—element">Element1</div>
							<div class="scroll—element">Element2</div>
							<div class="scroll—element">Element3</div>
							<div class="scroll—element">Element4</div>
							<div class="scroll—element">Element5</div>
							<div class="scroll—element">Element6</div>
						</div>
					</div>
				</td>
			</tr>
		
				
			<tr class="tr">
				<td>
					<p>여기 하나 </p>
				</td>
			</tr>
			<tr>
				<td>
					<div class="wrap">
						<div class="scroll__wrap">
							<div class="scroll—element">Element1</div>
							<div class="scroll—element">Element2</div>
							<div class="scroll—element">Element3</div>
							<div class="scroll—element">Element4</div>
							<div class="scroll—element">Element5</div>
							<div class="scroll—element">Element6</div>
						</div>
					</div>
				</td>
			</tr>
	
					</table>
				</td>
			</tr>
		</table>

	</section>
</html>