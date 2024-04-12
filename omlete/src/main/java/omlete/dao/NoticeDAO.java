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
	//조회수
	void increaseViewcnt(int noticeNo) throws Exception;
	//게시글검색
	Notice selectNotice(int noticeNo);
	//리스트
	List<Notice> selectNoticeList(Map<String, Object> map);
}