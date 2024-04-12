package omlete.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.NoticeDAO;
import omlete.dto.Notice;
import omlete.util.Pager;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	//private final MoonDAO moonDAO;
	private final NoticeDAO noticeDAO;
	
	@Override
    public Notice getNotice(int noticeNo) throws Exception {
        return noticeDAO.selectNotice(noticeNo);
    }
	
	
	//전체 목록
    @Override
    public Map<String, Object> getNoticeList(int pageNum) {
        int totalSize = noticeDAO.selectNoticeCount();
        int pageSize = 5;
        int blockSize = 5;

        Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

        Map<String, Object> pageMap = new HashMap<String, Object>();
        pageMap.put("startRow", pager.getStartRow());
        pageMap.put("endRow", pager.getEndRow());
        List<Notice> noticeList = noticeDAO.selectNoticeList(pageMap);

        // 요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
        // => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("pager", pager);
        resultMap.put("noticeList", noticeList);

        return resultMap;
    }

	@Override
	public void addNotice(Notice notice) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyNotice(Notice notice) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeNotice(int noticeNo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getNoticeCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	//게시글 조회수 증가
	
	@Override
	public void increaseViewcnt(int noticeNo, HttpSession session) throws Exception {
	    long update_time = 0;
	    
	    // 이전 조회 시간을 가져옴
	    if (session.getAttribute("update_time") != null) {
	        update_time = (long) session.getAttribute("update_time");
	    }
	    
	    long current_time = System.currentTimeMillis();
	    
	    // 일정 시간이 경과한 경우에만 조회수를 증가시킴
	    if (current_time - update_time > 5 * 1000) {
	        // 조회수 증가
	        noticeDAO.increaseViewcnt(noticeNo);
	        
	        // 세션에 현재 시간 저장
	        session.setAttribute("update_time", current_time);
	    }
	    
	}




}







	
	
