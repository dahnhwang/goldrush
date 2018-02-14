/**
 * 
 */


// CHECK ALL

function checkAll() {

	/* 이메일검사 */
	$('#email').on('blur', function() {
		var result = emailCheck1();
		if (result == true) {
			if (emailCheck2() == true) {
				return true;
			}
			return false;
		}
	});

	/* 이름검사 */
	$('#name').on('blur', function() {
		if (nameCheck() == true) {
			return true;
		}
		return false;
	});

	/* 패스워드 검사 */
	$('#pwd').on('blur', function() {
		if (passCheck() == true) {
			$('#repass').on('blur', function() {
				if (passReCheck() == true) {
					return true;
				}
				return false;
			});
			return false;
		}
	});
}

// check email
function emailCheck1() {
	var emailCheck = document.joinForm.email.value;
	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

	if (emailPattern.test(emailCheck) == false) {
		$('#email_msg').text("이메일 형식에 맞지 않습니다").css('color', 'red');
		joinForm.email.focus();
		$('#join_btn').attr('disabled', true)
	}

	if (document.joinForm.email.value.length == 0) {
		$('#email_msg').text("이메일을 입력해주세요").css('color', 'red');
		joinForm.email.focus();
		$('#join_btn').attr('disabled', true)
	}
	return true;
}

function emailCheck2() {

	var email = $('#email').val();

	$.ajax({
		url : 'emailCheck.do',
		type : 'post',
		data : {
			email : email
		},
		dataType : 'json',
		success : function(data) {
			if (data.result != 0) {
				$('#email_msg').text("존재하는 이메일 입니다 다른 아이디를 입력해주세요").css(
						'color', 'red');
				joinForm.email.focus();
				$('#join_btn').attr('disabled', true)
				return false;
			} else {
				$('#email_msg').text("사용할 수 있는 아이디입니다.").css('color', 'green');
				return true;
			}
		}
	}); /* ajax끝 */
}

// check name
function nameCheck() {
	if (document.joinForm.name.value.length == 0) {
		$('#name_msg').text("이름을 입력해주세요").css('color', 'red');
		joinForm.name.focus();
		$('#join_btn').attr('disabled', true)
		return false;
	}
	$('#name_msg').text("사용할 수 있는 이름입니다.").css('color', 'green');
	return true;
}

function passCheck() {

	if (document.joinForm.pwd.value.length < 4) {
		$('#pwd_msg').text("비밀번호는 4자리 이상이여야 합니다").css('color', 'red');
		joinForm.pwd.focus();
		$('#join_btn').attr('disabled', true)
		return false;
	}

	$('#pwd_msg').text("비밀번호 입력완료").css('color', 'green');
	return true;
}

function passReCheck() {
	if (document.joinForm.pwd.value != document.joinForm.repass.value) {
		$('#repwd_msg').text("암호가 일치하지 않습니다").css('color', 'red');
		joinForm.pwd.focus();
		$('#join_btn').attr('disabled', true)
		return false;
	}
	$('#repwd_msg').text("비밀번호 일치").css('color', 'green');
	return true;
}