package omlete.service;

import java.util.List;

import omlete.dto.Actors;
import omlete.dto.Contents;

public interface ApiService {
	//api에서 영화id를 검색해서 List에 저장
	List<String> getMoviemid(int page); 
	//api에서 드라마id를 검색해서 List에 저장
	List<String> getTvmid(int page); 
	String setMovieActor(String mid);
}
