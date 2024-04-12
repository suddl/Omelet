package omlete.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import omlete.dto.Notice;


public interface NoticeService {

	//notice
	//추가
	void addNotice(Notice notice);
	//수정
	void modifyNotice(Notice notice);
	//삭제
	void removeNotice(int noticeNo); 
	//총개수
	int getNoticeCount();
	//상세보기
	public Notice getNotice(int noticeNo);
	//리스트검색
	Map<String, Object> getNoticeList(int pageNum);
	//조회수 증가
	public void increaseViewcnt(int noticeNo, HttpSession session) throws Exception;
	
}