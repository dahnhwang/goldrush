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
<style type="text/css">
.wrapper-login {
	margin-top: 80px;
	margin-left: 50px;
	margin-right: 50px;
}

.form-signin {
	max-width: 100%;
	margin: 0 auto;
}

.form-signin-heading {
	margin-bottom: 30px;
}

.loginDiv {
	margin-bottom: 20px;
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
							<button class="btn btn-lg btn-primary btn-block" type="button"
								id="login">Login</button>
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
</body>
</html>