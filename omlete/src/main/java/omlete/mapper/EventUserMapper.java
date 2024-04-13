package omlete.mapper;

import org.apache.ibatis.annotations.Param;

public interface EventUserMapper {
	int insertEventUser(@Param("eventNo") int eventNo, @Param("eventMember") int eventMember);
}
