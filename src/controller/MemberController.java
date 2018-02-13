package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Member;
import service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	private IMemberService memberService;

	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping("login.do")
	public @ResponseBody Map<String, Object> login(String email, String pwd, HttpSession session) {
		int result = memberService.passwordCheck(email, pwd);
		// 패스워드 체크해서 맞으면 1을 리턴, 틀리면 -1을 리턴, 정보가 없으면 0을 리턴
		Map<String, Object> map = new HashMap<>();
		if (result == 1) {
			Member member = memberService.getMemberFromEmail(email);
			session.setAttribute("loginUser", member.getM_id());
		}
		map.put("result", result);
		return map;
	}

	@RequestMapping("loginCheck.do")
	public @ResponseBody Map<String, Object> loginCheck(HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		int result = 0;
		if (session.getAttribute("loginUser") != null) {
			result = 1;
		} else {
			result = 0;
		}
		map.put("result", result);
		return map;
	}

	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "joinForm";
	}

	@RequestMapping("join.do")
	public @ResponseBody Map<String, Object> join(String email, String name, String pwd) {
		Member member = new Member();
		member.setEmail(email);
		member.setName(name);
		member.setPwd(pwd);
		int result = memberService.addMember(member);
		Map<String, Object> map = new HashMap<>();
		map.put("result", result);
		return map;
	}

	@RequestMapping("emailCheck.do")
	public @ResponseBody Map<String, Object> emailCheck(String email) {
		int check = memberService.checkMember(email);
		Map<String, Object> result = new HashMap<>();
		result.put("result", check);
		return result;
	}

}
