<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	<h1 align="center">회원정보 수정</h1>
	<hr>
	<form align=center>
		<div class="col-12"><br> 
			<label>이름 : </label><input type="text" readonly value = "회원이름"><br> <br> 
		</div>
		<div class="col-12">
			<label>아이디(이메일) : </label><input type="text" readonly value = "회원아이디"><br> <br> 
		</div>
		<div class="col-md-6">
			<label>새로운 비밀번호 : </label><input type="text"><br> <br> 
			<label>새로운 비밀번호 확인 : </label><input type="text"><br> 
		</div>
		</br>
		<div class="col-md-6">
			<label>전화번호 : </label><input type="text" placeholder ="회원 기존 전화번호">
			
				<button><a href="#" onClick="alert('입력하신 전화번호로 인증번호를 보냈습니다.')">인증번호 보내기</a></button><br> <br> 
				<input type="text" placeholder ="인증번호를 적어주세요"><button>인증번호 확인</button>
			
		</div>

		<br> <br>

		<button type=submit formaction="">수정</button>
		<button type=submit formaction="home">취소</button>

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
<title>ModifyMember</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
.delete{
float:right;
text-decoration:underline;

}
.delete:hover{
cursor:pointer;

}
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
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3" align="center">회원정보 수정</h4>
				<form class="validation-form" novalidate>
					<div class="row"></div>
					<div class="mb-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" id="name" placeholder="회원 이름 고정" readonly>
						
					</div>
					
					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" id="email" placeholder="회원 이메일 고정"
							readonly>
						
					</div>
					<div class="mb-3">
						<label for="new-password">새로운 비밀번호</label> <input type="new-password"
							class="form-control" id="new-password" placeholder="6자리 이상"
							required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="new-auth-password">새로운 비밀번호 확인</label> <input type="new-auth-password"
							class="form-control" id="new-auth-password" placeholder=""
							required>
						<div class="invalid-feedback">비밀번호가 다릅니다.</div>
					</div>
					
					<div class="mb-3">
						<label for="phonenum">전화번호</label> <input type="phonenum"
							class="form-control" id="phonenum" placeholder="원래 전화번호"
							required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>
					
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<div style="float:right;margin-right:37%;">
					<button class="btn btn-primary btn-lg btn-block" type="submit">수정
						</button></div>
						
				</form>
				<form>
				<div style="float:left;margin-left:37%;">
						<button class="btn btn-primary btn-lg btn-block" type="submit" formaction="home">취소
						</button>
					</div>
					</form>
					<a onclick="confirm('정말로 탈퇴하시겠습니까?')"class="delete">회원 탈퇴</a>
			</div>
			
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2022 khjsoft</p>
		</footer>
	</div>
	<script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>
</body>
</html>


