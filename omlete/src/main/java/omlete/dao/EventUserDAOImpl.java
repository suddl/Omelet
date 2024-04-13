package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.mapper.EventUserMapper;

@Repository
@RequiredArgsConstructor
public class EventUserDAOImpl implements EventUserDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertEventUser(int eventNo, int eventMember) {
		return sqlSession.getMapper(EventUserMapper.class).insertEventUser(eventNo, eventMember);
	}

}
