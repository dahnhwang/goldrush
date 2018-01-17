package dao;

import java.util.List;

import model.Member;

public interface IMemberDao {
	
	public int insertMember(Member member);
	
	public int deleteMember(int m_id);
	
	public Member selectMember(int m_id);
	
	public List<Member> selectAllMember();
	
	public int checkMember(String email);

	public String checkPassword(String email);
}
