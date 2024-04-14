package omlete.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import omlete.dto.EventUser;

public interface EventUserMapper {
	int insertEventUser(@Param("eventNo") int eventNo, @Param("eventMember") int eventMember);
	List<EventUser> selectEventUserList(int memberNo);
	
}
