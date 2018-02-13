package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping("login.do")
	public @ResponseBody Map<String, Object> login(String email, String pwd) {
		// int result = memberService.passwordCheck(email, pwd);
		// // 패스워드 체크해서 맞으면 1을 리턴, 틀리면 -1을 리턴, 정보가 없으면 0을 리턴
		 Map<String, Object> map = new HashMap<>();
		// if (result == 1) {
		// Member member = memberService.getMemberFromEmail(email);
		// session.setAttribute("loginUser", member.getmId());
		// }
		// map.put("result", result);
		return map;
	}

}
