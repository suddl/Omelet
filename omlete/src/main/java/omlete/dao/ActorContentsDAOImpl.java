package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.ActorContents;
import omlete.mapper.ActorContentsMapper;

@Repository
@RequiredArgsConstructor
public class ActorContentsDAOImpl implements ActorContentsDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertActorContents(ActorContents actorC) {
		return sqlSession.getMapper(ActorContentsMapper.class).insertActorContents(actorC);
		
	}
	@Override
	public List<ActorContents> selectActorContentsList(){
		return sqlSession.getMapper(ActorContentsMapper.class).selectActorContentsList();
	}
	@Override
	public ActorContents selectActorContents(int actorCno) {
		return sqlSession.getMapper(ActorContentsMapper.class).selectActorContents(actorCno);
	}

}
