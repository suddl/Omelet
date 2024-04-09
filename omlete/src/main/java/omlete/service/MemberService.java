package omlete.service;

import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.exception.LoginAuthFailException;
import omlete.exception.MemberNotFoundException;

public interface MemberService {
	void addMember(Member member) throws ExistsMemberException;
	Member getMemberId(Member member) throws MemberNotFoundException;
	
	Member loginAuth(Member member) throws LoginAuthFailException;
	
	
	// 마이페이지
	Member getMemberNo(int memberNo);
	Member getMemberId(String memberId);
	Member getMemberNickname(String memberNickname);
  //Member getMemberEmailMember(String memberemail); throws MemberNotFoundException;
	void modifyMemberInfo(Member member);
	void modifyMemberResign(int memberNo);
	void modifyMemberContents(Member member);
	/* 비번 아이디 찾기
	void modifyMember(Member member) throws MemberNotFoundException;
	void pwModifyMember(Member member) throws MemberNotFoundException;
	void pwModifyMember2(Member member) throws MemberNotFoundException;
	 */

}
