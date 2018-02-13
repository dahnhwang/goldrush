package service;

import model.Member;

public interface IMemberService {

	// 회원가입
	public int addMember(Member member);

	// 기존에 있는 회원인지 확인(이메일값으로 검사)
	public int checkMember(String email);

	// 회원정보 가져오기 (개인화 정보 보여줄때)
	public Member getMember(int mId);

	// 회원정보 가져오기2 (이메일로)
	public Member getMemberFromEmail(String email);

	// 로그인, 게시판 삭제, 회원탈퇴 시 아이디 및 패스워드 체크
	public int passwordCheck(String email, String pwd);

}
