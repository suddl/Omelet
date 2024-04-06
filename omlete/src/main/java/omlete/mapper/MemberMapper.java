package omlete.mapper;

import omlete.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	
	Member selectMember(String memberId);
	
	

}
