package omlete.dao;

import omlete.dto.ActorContents;
import omlete.dto.Actors;
import java.util.List;

public interface ActorContentsDAO {
	 //actorContents를 추가
	 int insertActorContents(ActorContents actorC);	
	 //모든 actorContents 불러오기
	 List<ActorContents> selectActorContentsList(); 
	//contents id로 해당 배우정보 불러오기
	 ActorContents selectActorContents(int actorCno);
}
