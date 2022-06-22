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
</style>

<title>board</title>
</head>
<body>
	<header>
		<div align="left">
			<table>
				<tr>
					<td>
						<h1 class="h1">&nbsp;&nbsp;<a href ="home" >칵테일 백과사전</a></h1>
					</td>
					<td>

						<div id="cover">
							<form method="get" action="">
								<div class="tb">
									<input id=searchinput type="text" placeholder="Search" required>

									<button type="submit">검색</button>

								</div>
							</form>
						</div>

					</td>
					<td>
						<button>회원정보</button>
					</td>
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
			<tr class="tr">
				<td>
					<p>board</p><a href = "boardDetail">게시글 상세페이지</a>
				</td>
			</tr>
		</table>
		
	</section>
</html>