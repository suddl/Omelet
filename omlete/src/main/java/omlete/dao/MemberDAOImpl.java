package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.mapper.MemberMapper;

@Repository
@RequiredArgsConstructor
public class MemberDAOImpl implements MemberDAO {
	public final SqlSession sqlSession;
	
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}
	
	@Override
	public String selectMemberId(Member member) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberId(member);
	}
	
	@Override
	public Member selectMember(String memberId) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(memberId);
	}
	
	@Override
	public Member selectMemberNo(int memberNo) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberNo(memberNo);
	}

	@Override
	public int updateMemberInfo(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberInfo(member);
	}

	@Override
	public int updateMemberResign(int memberNo) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberResign(memberNo);
	}

	@Override
	public int updateMemberContents(int memberNo, int memberFavorite1) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberContents(memberNo, memberFavorite1);
	}

	@Override
	public Member selectMemberNickname(String memberNickname) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberNickname(memberNickname);
	}

	@Override
	public Member selectMemberEmail(String memberEmail) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberEmail(memberEmail);
	}

	@Override
	public List<Member> selectMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList();
	}

	@Override
	public List<Member> selectReportedMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectReportedMemberList();
	}

	@Override
	public int updateMeberStatus(int memberStatus) {
		return sqlSession.getMapper(MemberMapper.class).updateMeberStatus(memberStatus);
	}

}
