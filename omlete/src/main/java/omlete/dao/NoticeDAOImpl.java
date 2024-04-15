package omlete.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Notice;
import omlete.mapper.NoticeMapper;

@Repository
@RequiredArgsConstructor
public class NoticeDAOImpl implements NoticeDAO {
	private final SqlSession sqlSession;
	//추가
	@Override
	public int insertNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).insertNotice(notice);
	}
	//수정
	@Override
	public int updateNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).updateNotice(notice);
	}
	//삭제
	@Override
	public int deleteNotice(int noticeNo) {
		return sqlSession.getMapper(NoticeMapper.class).deleteNotice(noticeNo);
	}
	//게시글 검색
	@Override
	public Notice selectNotice(int noticeNo) {
		return sqlSession.getMapper(NoticeMapper.class).selectNotice(noticeNo);
	}
	//총개수
	@Override
	public int selectNoticeCount() {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeCount();
	}
	//문의리스트
	@Override
	public List<Notice> selectNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList(map);
	}
	//이벤트리스트
	@Override
	public List<Notice> selectNoticeList2(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList2(map);
	}
	//조회
	@Override
	public void increaseViewcnt(int noticeNo) {
	    sqlSession.update("omlete.dao.NoticeMapper.increaseViewcnt", noticeNo);
	}
}
