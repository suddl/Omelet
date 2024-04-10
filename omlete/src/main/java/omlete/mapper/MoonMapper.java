package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Moon;

public interface MoonMapper {
	int insertMoon(Moon moon);
	Moon selectMoon(int moonNo);
	int selectMoonCount();
	List<Moon> selectMoonList(Map<String, Object> map);
}
