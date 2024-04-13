package omlete.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.EventUserDAO;

@Service
@RequiredArgsConstructor
public class EventUserServiceImpl implements EventUserService {
	private final EventUserDAO eventUserDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addEventUser(int eventNo, int eventMember) {
		eventUserDAO.insertEventUser(eventNo, eventMember);
	}

}
