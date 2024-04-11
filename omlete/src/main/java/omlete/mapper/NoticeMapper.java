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
	//상세보기
	public Notice noticeDetail(int noticeNo);
	//조회수
	public void hitNum(int noticeNo);
	//리스트
	List<Notice> selectNoticeList(Map<String, Object> map);
}
