package omlete.dao;

import omlete.dto.Contents;
import omlete.dto.Member;

import java.util.List;

public interface ContentsDAO {
	// contents를 추가
	int insertContents(Contents contents);

	// 모든 contents 불러오기
	List<Contents> selectContentsList();

	// 작품id로 해당 작품정보 불러오기
	Contents selectContents(int contentsNo);

	// TMDB에서 작품 정보를 불러오기
	List<Contents> getContentsInfoList(String type);

	// 타입별 출력
	List<Contents> selectContentsListByType(String contentsType);

	// 장르별 개수 출력
	int selectContentsCountByGenre(String contentsGenre);

	// 타입별 개수 출력
	int selectContentsCountByType(String contentsType);

	// 작품 수정
	int updateContents(Contents contents);

	// 작품 삭제
	int deleteContents(int contentsNo);

	List<Contents> selectContentsListByOrder(String orderBy);

	// ==================================================================
	List<Contents> searchFavorite(String movieName);

	// 최신 영화 가져오기
	List<Contents> getLatestMovieList();

	// 인기 영화 가져오기
	List<Contents> getPopuarMoiveListg();

	// 찜한 영화 가져오기
	List<Contents> getFavoriteMovies(Member loginUser);
	
	
	
	
	
	
	//리뷰 작성 시 제목 받아오기
	String selectContentsTitleByTname(String contentsTname);

}
