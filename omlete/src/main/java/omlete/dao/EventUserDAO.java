package omlete.dao;

import java.util.List;

import omlete.dto.EventUser;

public interface EventUserDAO {
	int insertEventUser(int eventNo, int eventMember);
	List<EventUser> selectEventUserList(int memberNo);
	List<EventUser> selectEventUserRecordList(int memberNo);
}
