package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IMemberDao;
import model.Member;

@Service
public class MemberService implements IMemberService {

	@Autowired
	public IMemberDao memberDao;

	@Override
	public int addMember(Member member) {
		// result가 0인 경우에만 Form에서 submit 가능하게 해서 여기까지 넘어옴
		int addResult = memberDao.insertMember(member);
		// result가 1이면 회원가입 성공 / 로그인 가능
		return addResult;
	}

	@Override
	public int checkMember(String email) {
		int result = memberDao.checkMember(email);
		if (result == 0) {
			// 회원가입시키기
			return result;
		} else {
			// 사용불가
			return result;
		}
	}

	@Override
	public Member getMember(int mId) {
		Member member = memberDao.selectMember(mId);
		return member;
	}

	@Override
	public Member getMemberFromEmail(String email) {
		Member member = memberDao.selectMemberFromEmail(email);
		return member;
	}

	@Override
	public int passwordCheck(String email, String pwd) {
		// 패스워드 체크해서 맞으면 1을 리턴, 틀리면 -1을 리턴, member 정보가 없으면 0을 리턴

		int pwdCheckResult = 0;
		Member member = memberDao.selectMemberFromEmail(email);
		if (member == null) {
			pwdCheckResult = 0;
		} else {
			if (pwd.equals(member.getPwd())) {
				pwdCheckResult = 1;
			} else {
				pwdCheckResult = -1;
			}
		}
		return pwdCheckResult;
	}

}
