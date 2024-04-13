package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.EventUser;
import omlete.mapper.EventUserMapper;

@Repository
@RequiredArgsConstructor
public class EventUserDAOImpl implements EventUserDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertEventUser(int eventNo, int eventMember) {
		return sqlSession.getMapper(EventUserMapper.class).insertEventUser(eventNo, eventMember);
	}

	@Override
	public List<EventUser> selectEventUserList(int memberNo) {
		return sqlSession.getMapper(EventUserMapper.class).selectEventUserList(memberNo);
	}

}
