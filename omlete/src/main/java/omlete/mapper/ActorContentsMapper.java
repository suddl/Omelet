package omlete.mapper;

import java.util.List;

import omlete.dto.ActorContents;

public interface ActorContentsMapper {
	int insertActorContents(ActorContents actorC);
	List<ActorContents> selectActorContentsList();
	ActorContents selectActorContents(int actorCno);
}
