package omlete.service;

import java.util.Map;

import omlete.dto.Moon;

public interface MoonService {
	//추가
	void addMoon(Moon moon);
	//글번호 전달받아 게시글 검색
	Moon getMoon(int moonNo);
	//리스트 검색
	Map<String, Object>getMoonList(int pageNum);
	

}
