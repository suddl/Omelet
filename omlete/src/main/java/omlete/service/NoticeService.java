package omlete.service;

import java.util.Map;

import omlete.dto.Notice;
import omlete.exception.BoardNotFoundException;


public interface NoticeService {

	//notice
	//추가
	void addNotice(Notice notice);
	//수정
	void modifyNotice(Notice notice) throws BoardNotFoundException;
	//삭제
	void removeNotice(int noticeNo) throws BoardNotFoundException; 
	//총개수
	int getNoticeCount();
	//글번호 전달받아 게시글 검색
	Notice getNotice(int noticeNo);
	//리스트검색
	Map<String, Object> getNoticeList(int pageNum);
	
}