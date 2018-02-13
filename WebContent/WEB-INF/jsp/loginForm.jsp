<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {

		$('#join-btn').on('click', function() {
			$(location).attr('href', 'joinForm.do');
		});

		$('#login').on('click', function() {
			var pwd = SHA256($('#pwd').val());
			var email = $('#email').val();
			$.ajax({
				url : 'login.do',
				type : 'POST',
				dataType : 'json',
				data : {
					email : email,
					pwd : pwd
				},
				success : function(data) {
					/* 패스워드 체크해서 맞으면 1을 리턴(세션에 정보넣기), 틀리면 -1을 리턴, 정보가 없으면 0을 리턴 */
					if (data.result == 1) {
						alert("로그인 성공!");
						$(location).attr('href', 'forecast.do');
					} else if (data.result == -1) {
						alert("비밀번호가 틀렸습니다. 다시 시도해주세요");
					} else {
						alert("가입된 회원 정보가 없습니다. 회원가입해주세요");
						$(location).attr('href', 'joinForm.do');
					}
				}
			}); /* ajax 끝 */
		}); /* 로그인 버튼 끝 */
	})/* 다큐먼트 레디 펑션 끝 */
</script>

<style type="text/css">
.wrapper-login {
	margin-top: 80px;
	margin-left: 50px;
	margin-right: 50px;
}

.form-signin {
	max-width: 100%;
	margin: 0 auto;
	margin-bottom: 400px;
}

.form-signin-heading {
	margin-bottom: 30px;
}

.loginDiv {
	margin-bottom: 20px;
}

.form-control-lg {
	width: 100%;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrapper">
		<div class="container">
			<div class="wrapper-login">
				<form class="form-signin">
					<h1 class="form-signin-heading">환영합니다</h1>
					<div class="form-group">
						<div class="loginDiv">
							<input type="text" class="form-control form-control-lg"
								id="email" name="email" placeholder="아이디(이메일)을 입력해주세요">
						</div>
						<div class="loginDiv">
							<input type="password" class="form-control form-control-lg"
								name="pwd" id="pwd" placeholder="Password" required="" />
						</div>
						<div class="loginDiv">
							<button type="button" class="btn btn-primary btn-lg" id="login">로그인</button>
							<button type="button" class="btn btn-secondary btn-lg"
								id="join-btn">회원가입</button>
						</div>
					</div>
				</form>
			</div>


		</div>
	</div>
	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 GoldMine </b>All rights reserved.
		</div>
	</div>

	<script src="scripts/sha256.js" type="text/javascript"></script>
</body>
</html>