package omlete.dao;

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
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}
		
	@Override
	public Member selectMember(String memberId) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(memberId);
	}

	@Override
	public Member selectEmailMember(String memberEmail) {
		return sqlSession.getMapper(MemberMapper.class).selectEmailMember(memberEmail);
	}
	

}
