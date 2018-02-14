<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 페이지</title>
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
<script src="scripts/member.js"></script>
<script src="scripts/sha256.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						checkAll()
						$('#join_btn')
								.on(
										'click',
										function(e) {
											e.preventDefault();

											if (document.joinForm.email.value.length == 0
													&& document.joinForm.name.value.length == 0
													&& document.joinForm.pwd.value.length == 0
													&& document.joinForm.pwd_check.value.length == 0) {
												alert("회원정보를 입력해주세요!")
												return false;
											}

											var pwd = SHA256($('#pwd').val());
											var email = $('#email').val();
											var name = $('#name').val();
											$
													.ajax({
														url : 'join.do',
														type : 'POST',
														dataType : 'json',
														data : {
															name : name,
															email : email,
															pwd : pwd
														},
														success : function(data) {
															if (data.result == 1) {
																$(location)
																		.attr(
																				'href',
																				'joinInfo.do');
															} else {
																alert("Error : Please retry");
															}
														}
													}); /* ajax 끝 */
										}); /* 회원가입 버튼 끝 */
					});
</script>
<style>
.wrapper-join {
	margin-top: 80px;
	margin-left: 50px;
	margin-right: 50px;
}

#joinForm {
	max-width: 100%;
	margin: 0 auto;
	margin-bottom: 100px;
}

.form-control {
	width: 100%;
	border: 1px solid #cccccc
}

.form-signin-heading {
	margin-bottom: 30px;
}

#joinFormBtn {
	margin-top: 30px;
}

#joinForm label {
	display: inline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrapper">
		<div class="container">

			<div class="wrapper-join">


				<form id="joinForm" name="joinForm">

					<h1 class="form-signin-heading">환영합니다</h1>
					<div class="form-group">
						<label for="email">Email</label> <span id="email_msg"></span><input
							type="email" class="form-control" id="email"
							placeholder="이메일을 입력하세요" name="email">
					</div>

					<div class="form-group">
						<label for="name">Name</label> <span id="name_msg"></span><input
							type="name" class="form-control" placeholder="이름을 입력하세요"
							name="name" id="name">

					</div>


					<div class="form-group">
						<label for="pwd">Password</label> <span id="pwd_msg"></span><input
							type="password" class="form-control" id="pwd"
							placeholder="비밀번호를 입력하세요" name="pwd">
					</div>


					<div class="form-group">
						<label for="repass">Re-Password</label> <span id="repwd_msg"></span><input
							type="password" class="form-control" id="repass"
							placeholder="비밀번호를 다시 입력하세요" name="pwd_check">
					</div>

					<div id="joinFormBtn">
						<button type="submit" class="btn btn-primary btn-lg" id="join_btn"
							onclick="return checkAll()">회원가입</button>
						<button type="reset" class="btn btn-danger btn-lg" id="reset_btn">취소</button>
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
</body>
</html>