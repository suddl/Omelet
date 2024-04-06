package omlete.mapper;

import omlete.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	Member selectMember(String memberId);
	Member selectEmailMember(String memberEmail);
}
