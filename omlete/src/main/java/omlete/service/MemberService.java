package omlete.service;

import java.util.List;

import omlete.dto.Member;

public interface MemberService {
	void addMember(Member member);
	String getIdMember(Member member);
	Member loginAuth(Member member);
	
	
	// 마이페이지
	Member getMemberNo(int memberNo);
	Member getMemberId(String memberId);
	Member getMemberNickname(String memberNickname);
    Member getMemberEmail(String memberEmail);
    void modifyMemberInfo(Member member);
	void modifyMemberResign(int memberNo);
	void modifyMemberContents(int memberNo, int memberFavorite1);
	void modifyMemberPoint(int memberNo, int memberPoint);
	
	//비번 아이디 찾기
	void pwModifyMember(Member member);
	/*void modifyMember(Member member);
	void pwModifyMember(Member member);
	void pwModifyMember2(Member member); */
	 
	//관리자 페이지
	List<Member> getMemberList();
	List<Member> getReportedMemberList();
	void modifyMeberStatus(int memberStatus);
	
}