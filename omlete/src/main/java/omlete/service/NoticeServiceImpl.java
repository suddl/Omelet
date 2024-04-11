package omlete.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import lombok.RequiredArgsConstructor;
import omlete.dao.NoticeDAO;
import omlete.dto.Notice;
import omlete.util.Pager;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	private final NoticeDAO noticeDAO;
	
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

	@Override
	public void noticeDetail(int noticeNo, Model model) {
		// TODO Auto-generated method stub
		
	}
/*
	@Override
	public void noticeDetail(int noticeNo, Model model) {
		model.addAllAttributes("someInt", noticeDAO.deleteNotice(noticeNo));
		getNoticeCount(noticeNo);
	}
	
	private void hitNum(int noticeNo) {
		noticeDAO.selectNoticeCount(noticeNo);
		
	}
*/
}







	
	
