package omlete.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.EventUserDAO;
import omlete.dto.EventUser;

@Service
@RequiredArgsConstructor
public class EventUserServiceImpl implements EventUserService {
	private final EventUserDAO eventUserDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addEventUser(int eventNo, int eventMember) {
		eventUserDAO.insertEventUser(eventNo, eventMember);
	}

	@Override
	public List<EventUser> getEventUserList(int memberId) {
		return eventUserDAO.selectEventUserList(memberId);
	}

	@Override
	public List<EventUser> getEventUserRecordList(int memberId) {
		return eventUserDAO.selectEventUserRecordList(memberId);
	}

}
