package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.mapper.ContentsMapper;

@Repository
@RequiredArgsConstructor
public class ContentsDAOImpl implements ContentsDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertContents(Contents contents) {
		return sqlSession.getMapper(ContentsMapper.class).insertContents(contents);

	}

	@Override
	public List<Contents> selectContentsList() {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsList();
	}

	@Override
	public Contents selectContents(int contentsNo) {
		return sqlSession.getMapper(ContentsMapper.class).selectContents(contentsNo);
	}

	@Override
	public List<Contents> getContentsInfoList(String type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Contents> selectContentsListByType(String contentsType) {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsListByType(contentsType);
	}

	@Override
	public int selectContentsCountByGenre(String contentsGenre) {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsCountByGenre(contentsGenre);
	}

	@Override
	public int selectContentsCountByType(String contentsType) {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsCountByType(contentsType);
	}

	@Override 
	public int updateContents(Contents contents) { 
		return sqlSession.getMapper(ContentsMapper.class).updateContents(contents);
	} 

	@Override
	public int deleteContents(int contentsNo) {
		return sqlSession.getMapper(ContentsMapper.class).deleteContents(contentsNo);
	}

	@Override
	public List<Contents> selectContentsListByOrder(String orderBy) {
		return sqlSession.getMapper(ContentsMapper.class).selectContentListByOrder(orderBy);
	}

	@Override
	public List<Contents> searchFavorite(String movieName) {
		return sqlSession.getMapper(ContentsMapper.class).searchFavorite(movieName);
	}

	@Override
	public List<Contents> getLatestMovieList() {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsOrderByStartDate();
	}

	@Override
	public List<Contents> getPopuarMoiveListg() {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsOrderByAvgstar();
	}

	@Override
	public List<Contents> getFavoriteMovies(Member loginUser) {
		return sqlSession.getMapper(ContentsMapper.class).selectFavoriteContentsByUser(loginUser.getMemberNo());
	}

	
	
	

	
	//리뷰 작성 시 제목 받아오기
	@Override
	public 	String selectContentsTitleByTname(String contentsTname) {
		return sqlSession.getMapper(ContentsMapper.class).selectContentsTitleByTname(contentsTname);
	}

}
