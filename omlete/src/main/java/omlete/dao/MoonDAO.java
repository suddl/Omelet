package omlete.dao;

import java.util.List;
import java.util.Map;

import omlete.dto.Moon;

public interface MoonDAO {
	int insertMoon(Moon moon);
	Moon selectMoon(int moonNo);
	int selectMoonCount();
	List<Moon> selectMoonList(Map<String, Object> map);

}
