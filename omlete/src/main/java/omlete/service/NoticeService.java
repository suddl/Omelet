package omlete.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

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
	//게시글 검색
	public void noticeDetail(int noticeNo, Model model);
	//리스트검색
	Map<String, Object> getNoticeList(int pageNum);
	
}