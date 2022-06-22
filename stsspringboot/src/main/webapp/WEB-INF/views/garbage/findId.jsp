<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호찾기</title>
</head>
<body>
	<h1><center>아이디/비밀번호 찾기 페이지</center></h1>
	<form align="center">
	<hr>
		<h2>아이디 찾기</h2>
		<div>
			<div class="col-12">
				<label>이름</label> <input type="text" name="name">
			</div>
			<br>
			<div class="col-12">
				<label>전화번호</label> <input type="text" name="number">
			</div>
			<br>
			<button>아이디 찾기</button>
		</div>
		<br> <br> 
		<h2>비밀번호 찾기</h2>

		<div>
			<div class="col-12">
				<label>아이디(이메일)</label> <input type="text" name="id">
				<button type=submit formaction="">이메일로 인증번호 보내기</button>
			</div>
			<br>
			<div class="col-12">
				<label>인증번호</label> <input type="text" name="checkauthnum">
				<button type=submit formaction="">인증번호 확인</button>
			</div>
			<br> <br> 
			<br>
			<label>새로운 비밀번호 : </label><input type="text"><br> <br> 
			<label>새로운 비밀번호 확인 : </label><input type="text"><br> 
			<br> <button>비밀번호 바꾸기</button>
		</div>
		<br> <br> 
		</br>
		<button type=submit formaction="login">로그인</button>
		<button type=submit formaction="joinMember">회원가입</button>
		</br> </br>
	</form>
</body>
</html> --%>



<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>findId</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>
<body>

	<!-- <ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="#">아이디찾기</a></li>

		<li class="nav-item"><a class="nav-link" href="#">비밀번호 찾기</a></li>

	</ul> -->
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3" align="center">아이디/비밀번호 찾기</h4>
				<form class="validation-form" novalidate>
					<div class="row"></div>
					<div class="mb-3">
						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">아이디찾기</a>
								<li class="nav-item"><a class="nav-link" href="#">비밀번호 찾기</a></li></ul>
								 <label for="name">이름</label>
								<input type="text" class="form-control" id="name" placeholder=""
								required>
								<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="phonenum">전화번호</label> <input type="phonenum"
							class="form-control" id="phonenum" placeholder="-빼고 입력하시오"
							required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>
					

					<!-- 자바스크립트로 두부분을 나눠서 나중에 하기-->


					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" id="email" placeholder="you@example.com"
							required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>

					<div class="mb-3">

						<label for="password">새로운 비밀번호</label> <input type="password"
							class="form-control" id="password" placeholder="6자리 이상" required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="auth-password">새로운비밀번호 확인</label> <input
							type="auth-password" class="form-control" id="auth-password"
							placeholder="" required>
						<div class="invalid-feedback">비밀번호가 다릅니다.</div>
					</div>

					

					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">
						로그인</button>
					<button class="btn btn-primary btn-lg btn-block" type="submit">
						회원가입</button>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2022 khjsoft</p>
		</footer>
	</div>
	<script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>
</body>
</html>



