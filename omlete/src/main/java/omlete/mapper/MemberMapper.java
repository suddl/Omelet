package omlete.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import omlete.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	String selectMemberId(Member member);
	Member selectMemberNickname(String memberNickname);
	Member selectMember(String memberId);
	Member selectMemberEmail(String memberEmail);
	
	//마이페이지
	Member selectMemberNo(int memberNo);
	int updateMemberInfo(Member member);
	int updateMemberResign(int memberNo);
	int updateMemberContents(@Param("memberNo") int memberNo, @Param("memberFavorite1") int memberFavorite1);
	int updateMemberPoint(@Param("memberNo") int memberNo, @Param("memberPoint") int memberPoint);
	
	//관리자 페이지
	List<Member> selectMemberList();
	List<Member> selectReportedMemberList();
	int updateMemberStatus(@Param("memberNo") int memberNo, @Param("memberStatus") int memberStatus);
}
