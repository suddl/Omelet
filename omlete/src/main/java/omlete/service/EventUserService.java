package omlete.service;

import java.util.List;

import omlete.dto.EventUser;

public interface EventUserService {
	void addEventUser(int eventNo, int eventMember);
	List<EventUser> getEventUserList(int memberId);
}
