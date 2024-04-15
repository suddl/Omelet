package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Notice;

public interface NoticeMapper {
	//추가
	int insertNotice(Notice notice);
	//수정
	int updateNotice(Notice notice);
	//삭제
	int deleteNotice(int noticeNo);
	//총개수
	int selectNoticeCount();
	//조회수 증가
	int increaseViewcnt(int noticeNo);
	//게시글 검색
	Notice selectNotice(int noticeNo);
	//문의리스트
	List<Notice> selectNoticeList(Map<String, Object> map);
	//이벤트리스트
	List<Notice> selectNoticeList2(Map<String, Object> map);
}
