package omlete.service;

import java.util.Map;

import omlete.dto.Moon;

public interface MoonService {
	//추가
	void addMoon(Moon moon);
	//총개수
	int getMoonCount();
	//상세보기
	public Moon getMoon(int moonNo);
	//리스트 검색
	Map<String, Object>getMoonList(int pageNum);
	

}
