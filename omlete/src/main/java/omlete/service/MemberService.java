package omlete.service;

import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.exception.LoginAuthFailException;

public interface MemberService {
	/* 회원가입 */
	void addMember(Member member) throws ExistsMemberException;
	/* 로그인 */
	Member loginAuth(Member member) throws LoginAuthFailException;

}
