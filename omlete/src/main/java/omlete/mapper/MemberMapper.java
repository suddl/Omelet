package omlete.mapper;

import omlete.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	Member selectMember(String memberId);
	Member selectEmailMember(String memberEmail);
	
	//마이페이지
	Member selectMemberNo(int memberNo);
	int updateMemberInfo(Member member);
	int updateMemberResign(int memberNo);
	int updateMemberContents(Member member);
}
