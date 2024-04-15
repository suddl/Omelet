package omlete.dao;

import java.util.List;
import java.util.Map;

import omlete.dto.Notice;


public interface NoticeDAO {
	//추가
	int insertNotice(Notice notice);
	//수정
	int updateNotice(Notice notice);
	//삭제
	int deleteNotice(int noticeNo);
	//총개수
	int selectNoticeCount();
	//게시글검색
	Notice selectNotice(int noticeNo);
	//조회수
	void increaseViewcnt(int noticeNo);
	//문의리스트
	List<Notice> selectNoticeList(Map<String, Object> map);
	//이벤트리스트
	List<Notice> selectNoticeList2(Map<String, Object> map);
}