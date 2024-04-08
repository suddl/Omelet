package omlete.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.NoticeDAO;
import omlete.dto.Notice;
import omlete.exception.BoardNotFoundException;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
	//private final MoonDAO moonDAO;
	private final NoticeDAO noticeDAO;
	
	//moon
	//추가
	/*
	 * @Transactional
	 * 
	 * @Override public void addMoon(Moon moon) { moonDAO.insertFaq(moon); } //수정
	 * 
	 * @Transactional
	 * 
	 * @Override public void modifyMoon(Moon moon) throws BoardNotFoundException {
	 * if(moonDAO.selectFaq(moon.getFNo())==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); }
	 * 
	 * moonDAO.updateFaq(moon); } //삭제
	 * 
	 * @Transactional
	 * 
	 * @Override public void removeFaq(int fNo) throws BoardNotFoundException {
	 * if(faqDAO.selectFaq(fNo)==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); } faqDAO.deleteFaq(fNo); } //전체
	 * 갯수
	 * 
	 * @Override public int getFaqCount() { return faqDAO.selectFaqCount(); } //목록
	 * 반환
	 * 
	 * @Override public Faq getFaq(int fNo) throws BoardNotFoundException {
	 * if(faqDAO.selectFaq(fNo)==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); } return faqDAO.selectFaq(fNo);
	 * }
	 */
	
	
	//notice
	//추가
	@Transactional
	@Override
	public void addNotice(Notice notice) {
		noticeDAO.insertNotice(notice);
	}
	//수정
	@Transactional
	@Override
	public void modifyNotice(Notice notice) throws BoardNotFoundException {
		if(noticeDAO.selectNotice(notice.getNoticeNo()) ==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		noticeDAO.updateNotice(notice);
	}
	//삭제
	@Transactional
	@Override
	public void removeNotice(int noticeNo) throws BoardNotFoundException {
		if(noticeDAO.selectNotice(noticeNo)==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		noticeDAO.deleteNotice(noticeNo);
	}
	//갯수
	@Override
	public int getNoticeCount() {
		return noticeDAO.selectNoticeCount();
	}
	
	//검색?
	@Override
	public Notice getNotice(int noticeNo) throws BoardNotFoundException {
		if(noticeDAO.selectNotice(noticeNo)==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		return noticeDAO.selectNotice(noticeNo);
	}
	
	
	@Override
	public List<Notice> getNoticeList(Map<String, Object> map) {
		return noticeDAO.selectNoticeList(map);
	}

	/*
	 * @Override public List<Faq> getstatusFaqList(Map<String, Object> map) { return
	 * faqDAO.selectstatusFaqList(map); }
	 */


	/*
	 * @Override public List<Faq> getorstatusFaqList(Map<String, Object> map) {
	 * return faqDAO.selectorstatusFaqList(map); }
	 */









	
	
}
