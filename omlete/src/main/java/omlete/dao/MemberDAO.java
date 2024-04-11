package omlete.dao;

import java.util.List;

import omlete.dto.Member;

public interface MemberDAO {
	/* 회원가입 */
	int insertMember(Member member);
	String selectMemberId(Member member);
	Member selectMemberNickname(String memberNickname);
	Member selectMemberEmail(String memberEmail);
	Member selectMember(String memberId);
	
	// 마이페이지
	Member selectMemberNo(int memberNo);
	int updateMemberInfo(Member member);
	int updateMemberResign(int memberNo);
	int updateMemberContents(Member member);

	//관리자 페이지
	List<Member> selectMemberList();
	List<Member> selectReportedMemberList();
	int updateMeberStatus(int memberStatus);
}