package omlete.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.MoonDAO;
import omlete.dto.Moon;
import omlete.util.Pager;

@Service
@RequiredArgsConstructor
public class MoonServiceImpl implements MoonService {
	private final MoonDAO moonDAO;
	//추가
	@Transactional
	@Override
	public void addMoon(Moon moon) {
		String title = moon.getMoonTitle();
		String content = moon.getMoonContent();
		title = title.replace("<", "&lt;");
		title = title.replace(">", "&gt;");
		
		title = title.replace(" ", "&nbsp;");
		
		content = content.replace("\n", "<br>");
		moon.setMoonTitle(title);
		moon.setMoonContent(content);
		
		moonDAO.insertMoon(moon);
	}

	//리스트 없으면 예외처리
	@Override
	public Moon getMoon(int moonNo) {
		return moonDAO.selectMoon(moonNo);
	}
	
	@Override
	public Map<String, Object> getMoonList(int pageNum) {
	    int totalSize = moonDAO.selectMoonCount(); // 올바른 메서드 호출로 수정
	    int pageSize = 8;
	    int blockSize = 5;

	    Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

	    Map<String, Object> pageMap = new HashMap<>();
	    pageMap.put("startRow", pager.getStartRow());
	    pageMap.put("endRow", pager.getEndRow());
	    List<Moon> moonList = moonDAO.selectMoonList(pageMap);

	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("pager", pager);
	    resultMap.put("moonList", moonList);

	    return resultMap;
	}

	@Override
	public int getMoonCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Override
	public Map<String, Object> getMoonMemberList(int moonMember, int pageNum) {
		int totalSize = moonDAO.selectMoonMemberCount(moonMember); // 올바른 메서드 호출로 수정
	    int pageSize = 8;
	    int blockSize = 5;

	    Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

	    Map<String, Object> pageMap = new HashMap<>();
	    pageMap.put("moonMember", moonMember); // moonMember 값을 설정
	    pageMap.put("startRow", pager.getStartRow());
	    pageMap.put("endRow", pager.getEndRow());
	    List<Moon> moonList = moonDAO.selectMoonMemberList(pageMap);

	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("pager", pager);
	    resultMap.put("moonList", moonList);

	    return resultMap;
	}
	
}
