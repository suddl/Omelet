package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.mapper.MemberMapper;

@Repository
@RequiredArgsConstructor
public class MemberDAOImpl implements MemberDAO {
	private final SqlSession sqlSession;
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberDAO.class).insertMember(member);
	}
	@Override
	public Member selectMember(String memberId) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(memberId);
	}

}
