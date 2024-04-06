package omlete.dao;

import omlete.dto.Member;

public interface MemberDAO {
	/* 회원가입 */
	int insertMember(Member member);
	
	int updateMember(Member member);
	
	Member selectMember(String memberId);
	
	Member selectEmailMember(String memberEmail);

}