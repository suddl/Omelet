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
	public void addMoon(Moon moonNo) {
		moonDAO.insertMoon(moonNo);
	}

	//리스트 없으면 예외처리
	@Override
	public Moon getMoon(int moonNo) {
		Moon moon = moonDAO.selectMoon(moonNo);
		if (moon == null) {
			throw new RuntimeException("게시글을 찾을 수 없습니다.");
		}
		return moon;
	}
	//리스트 검색
	@Override
	public Map<String, Object> getMoonList(int pageNum) {
		int totalSize = moonDAO.selectMoonCount();
		int pageSize=5;
		int blockSize=5;
		
		Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<Moon> moonList=moonDAO.selectMoonList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("moonList", moonList);
		
		return resultMap;
	}
}
