package omlete.service;

import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.ContentsDAO;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.exception.ContentsNotFoundException;
import omlete.exception.ExistsContentsException;

@Service
@RequiredArgsConstructor
public class ContentsServiceImpl implements ContentsService {
	private final ContentsDAO contentsDAO;

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addContents(Contents contents) {
		if (contentsDAO.selectContents(contents.getContentsNo()) == null) {
			contentsDAO.insertContents(contents);
		} else {
			throw new ExistsContentsException("이미 존재하는 작품입니다.", contents);
		}

	}

	@Override
	public List<Contents> getContentsList() {
		return contentsDAO.selectContentsList();
	}

	@Override
	public Contents getContents(int contentsNo) {
		Contents contents = contentsDAO.selectContents(contentsNo);
		if (contents == null) {
			throw new ContentsNotFoundException("해당 작품이 존재하지 않습니다.");
		}
		String front, url;
		String img1, img2, img3, poster;
		front = "https://image.tmdb.org/t/p/original";

		poster = contents.getContentsPoster();
		contents.setContentsPoster(front + poster);

		img1 = contents.getContentsPhoto1();
		contents.setContentsPhoto1(front + img1);
		img2 = contents.getContentsPhoto2();
		contents.setContentsPhoto2(front + img2);
		img3 = contents.getContentsPhoto3();
		contents.setContentsPhoto3(front + img3);

		return contents;
	}

	@Override
	public List<Contents> getContentsListByType(String contentsType) {
		return contentsDAO.selectContentsListByType(contentsType);
	}

	@Override 
	public int getContentsCountByGenre(String contentsGenre) {
		int contentsCount = contentsDAO.selectContentsCountByGenre(contentsGenre);
		return contentsCount;
	}

	@Override
	public int getContentsCountByType(String contentsType) {
		int contentsCount = contentsDAO.selectContentsCountByGenre(contentsType);
		return contentsCount;
	}

	@Override
	public void modifyContents(Contents contents) {
		contentsDAO.updateContents(contents);  
	}

	@Override
	public void removeContents(int contentsNo) {
		contentsDAO.deleteContents(contentsNo);

	}

	@Override
	public List<Contents> getContentsListByOrder(String orderBy) {
		return contentsDAO.selectContentsListByOrder(orderBy);
	}

	@Override
	public List<Contents> getMovieList() {
		List<Contents> movieList = contentsDAO.selectContentsListByType("영화");
		if (movieList == null) {
			// DAO 메서드가 null을 반환한 경우에 대한 처리
			return Collections.emptyList(); // 빈 리스트 반환 또는 예외 처리 등
		} else {
			// 콘텐츠 목록에 null 항목이 포함되어 있는지 확인하고 필요한 처리 수행
			for (Contents content : movieList) {
				if (content == null) {
					// 콘텐츠가 null인 경우에 대한 처리
				}
			}
			return movieList;
		}
	}

	@Override
	public List<Contents> getSeriseList() {
		List<Contents> seriseList = contentsDAO.selectContentsListByType("드라마");
		if (seriseList == null) {
			// DAO 메서드가 null을 반환한 경우에 대한 처리
			return Collections.emptyList(); // 빈 리스트 반환 또는 예외 처리 등
		} else {
			// 콘텐츠 목록에 null 항목이 포함되어 있는지 확인하고 필요한 처리 수행
			for (Contents content : seriseList) {
				if (content == null) {
					// 콘텐츠가 null인 경우에 대한 처리
				}
			}
			return seriseList;
		}

	}

	// ===========================================================
	@Override
	public List<Contents> getFavoriteContents(String movieName) {
		return contentsDAO.searchFavorite(movieName);
	}

	@Override
	public List<Contents> getLatestMovieList() {

		return contentsDAO.getLatestMovieList();
	}

	@Override
	public List<Contents> getPopularMovieList() {

		return contentsDAO.getPopuarMoiveListg();
	}

	@Override
	public List<Contents> getFavoriteMovies(Member loginUser) {

		return contentsDAO.getFavoriteMovies(loginUser);
	}



	
	
	
	//리뷰 작성 시 제목 받아오기
	@Override
	public String selectContentsTitleByTname(String contentsTname) {
		
		return contentsDAO.selectContentsTitleByTname(contentsTname);
	}
	
}
