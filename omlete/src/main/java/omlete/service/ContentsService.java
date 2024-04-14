package omlete.service;

import java.util.List;

import omlete.dto.Contents;
import omlete.dto.Member;

public interface ContentsService {
	void addContents(Contents contents);

	List<Contents> getContentsList();

	Contents getContents(int contentsNo);

	List<Contents> getContentsListByType(String contentsType);

	int getContentsCountByGenre(String contentsGenre);

	int getContentsCountByType(String contentsType);

	void modifyContents(Contents contents);

	void removeContents(int contentsNo);

	List<Contents> getContentsListByOrder(String orderBy);

	List<Contents> getMovieList();

	List<Contents> getSeriseList();
	
	//리뷰 작성 시 제목 받아오기
	String selectContentsTitleByTname(String contentsTname);

	// ===================================================
	List<Contents> getFavoriteContents(String movieName);

	// 최신 영화 목록
	List<Contents> getLatestMovieList();

	// 인기 영화 목록
	List<Contents> getPopularMovieList();

	// 유저가 찜한 영화 목록
	List<Contents> getFavoriteMovies(Member loginUser);
}
