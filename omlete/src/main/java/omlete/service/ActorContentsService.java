package omlete.service;

import java.util.List;

import omlete.dto.ActorContents;

public interface ActorContentsService {
	void addActorContents(ActorContents actorC);
	List<ActorContents> getActorContentsList();	
	ActorContents getActorContents(int actorCno);
}
