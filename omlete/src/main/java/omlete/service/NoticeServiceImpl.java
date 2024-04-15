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
    public Notice getNotice(int noticeNo) {
        return noticeDAO.selectNotice(noticeNo);
    }
	
	/*
	//전체 목록
    @Override
    public Map<String, Object> getNoticeList(int pageNum) {
        int totalSize = noticeDAO.selectNoticeCount();
        int pageSize = 8;
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
    */
	//공지 목록
	@Override
	public Map<String, Object> getNoticeList(int pageNum) {
	    int totalSize = noticeDAO.selectNoticeCount();
	    int pageSize = 8;
	    int blockSize = 5;

	    Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

	    Map<String, Object> pageMap = new HashMap<>();
	    pageMap.put("startRow", pager.getStartRow());
	    pageMap.put("endRow", pager.getEndRow());

	    // NoticeDAO에서 notice_status가 1인 항목만 가져오도록 요청
	    List<Notice> noticeList = noticeDAO.selectNoticeList(pageMap);

	    // 요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
	    // => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("pager", pager);
	    resultMap.put("noticeList", noticeList);

	    return resultMap;
	}
	// 이벤트 목록
	@Override
	public Map<String, Object> getNoticeList2(int pageNum) {
	    int totalSize = noticeDAO.selectNoticeCount();
	    int pageSize = 8;
	    int blockSize = 5;

	    Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

	    Map<String, Object> pageMap = new HashMap<String, Object>();
	    pageMap.put("startRow", pager.getStartRow());
	    pageMap.put("endRow", pager.getEndRow());

	    // NoticeDAO에서 notice_status가 9인 항목만 가져오도록 요청
	    List<Notice> noticeList2 = noticeDAO.selectNoticeList2(pageMap);

	    // 요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
	    // => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
	    Map<String, Object> resultMap = new HashMap<String, Object>();
	    resultMap.put("pager", pager);
	    resultMap.put("noticeList2", noticeList2);

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
	public void increaseViewcnt(int noticeNo) {
	    noticeDAO.increaseViewcnt(noticeNo);
	}




}







	
	
