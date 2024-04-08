package omlete.service;

import java.util.List;
import java.util.Map;

import omlete.dto.Moon;
import omlete.dto.Notice;
import omlete.exception.BoardNotFoundException;


public interface BoardService {
	//moon
	/*
	 * void addFaq(Moon moon); void modifyFaq(Moon moon) throws
	 * BoardNotFoundException; void removeFaq(int moonNo) throws
	 * BoardNotFoundException; int getFaqCount(); Moon getFaq(int moonNo) throws
	 * BoardNotFoundException; List<Moon> getMoonList(Map<String, Object> map);
	 * List<Moon> getstatusMoonList(Map<String, Object> map); List<Moon>
	 * getorstatusMoonList(Map<String, Object> map);
	 */
	//notice
	void addNotice(Notice notice);
	void modifyNotice(Notice notice) throws BoardNotFoundException;
	void removeNotice(int nNo) throws BoardNotFoundException; 
	int getNoticeCount();
	Notice getNotice(int nNo) throws BoardNotFoundException;
	List<Notice> getNoticeList(Map<String, Object> map);
	
	
}