package omlete.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.ActorsDAO;
import omlete.dto.Actors;
import omlete.exception.ActorsNotFoundException;
import omlete.exception.ExistsActorsException;




@Service
@RequiredArgsConstructor
public class ActorsServiceImpl implements ActorsService{
	private final ActorsDAO actorsDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addActors(Actors actors) {
		if(actorsDAO.selectActors(actors.getActorNo()) != null) {
			
			throw new ExistsActorsException("이미 존재하는 배우입니다.", actors);
		}
		actorsDAO.insertActors(actors);
		
	}

	@Override
	public List<Actors> getActorsList() {
		return actorsDAO.selectActorsList();
	}
	
	@Override
	public List<Actors> getActorsListByContents(int contents) {
		
		return actorsDAO.selectActorsListByContents(contents);
	}

	@Override
	public Actors getActors(int actorNo) {
		Actors actors = actorsDAO.selectActors(actorNo);
		if(actors == null) {
			throw new ActorsNotFoundException("해당 배우가 존재하지 않습니다.");
		}
		String front, img;
		front="https://image.tmdb.org/t/p/original";
		
		img=actors.getActorImg();
		actors.setActorImg(front+img);
		return actors;
	}



}
