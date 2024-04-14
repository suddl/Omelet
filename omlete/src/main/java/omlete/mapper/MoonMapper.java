package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Moon;

public interface MoonMapper {
	//추가
	int insertMoon(Moon moon);
	//게시글 검색
	Moon selectMoon(int moonNo);
	//총개수
	int selectMoonCount();
	//리스트
	List<Moon> selectMoonList(Map<String, Object> map);
	
	// 마이페이지
	List<Moon> selectMoonMemberList(Map<String, Object> map);
}
