package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;

@Repository
@RequiredArgsConstructor
public class MemberDAOImpl implements MemberDAO {
	private final SqlSession sqlSession;
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberDAO.class).insertMember(member);
	}

}
