package omlete.service;

import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.exception.LoginAuthFailException;
import omlete.exception.MemberNotFoundException;

public interface MemberService {
	void addMember(Member member) throws ExistsMemberException;
	
	void modifyMember(Member member) throws MemberNotFoundException;
	
	Member getMember(String memberId) throws MemberNotFoundException;
	
	Member loginAuth(Member member) throws LoginAuthFailException;
	
	Member getEmailMember(String memberEmail) throws MemberNotFoundException;
	
	// 마이페이지
	Member getMemberNo(int memberNo);
	void modifyMemberInfo(Member member);
	void modifyMemberResign(int memberNo);
	void modifyMemberContents(Member member);

}
