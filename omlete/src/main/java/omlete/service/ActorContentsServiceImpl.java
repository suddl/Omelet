package omlete.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.ActorContentsDAO;
import omlete.dto.ActorContents;
import omlete.exception.ExistsActorContentsException;
import omlete.exception.ExistsActorsException;

@Service
@RequiredArgsConstructor
public class ActorContentsServiceImpl implements ActorContentsService{
	private final ActorContentsDAO actorCDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addActorContents(ActorContents actorC) {
		if(actorCDAO.selectActorContents(actorC.getActorContentsId()) != null) {
			throw new ExistsActorContentsException("이미 존재하는 ActorContents입니다.", actorC);
		}
		actorCDAO.insertActorContents(actorC);
	}

	@Override
	public List<ActorContents> getActorContentsList() {
		return actorCDAO.selectActorContentsList();
	}

	@Override
	public ActorContents getActorContents(int actorNo) {
		ActorContents actorC = actorCDAO.selectActorContents(actorNo);
		
		return actorC;
	}



}
