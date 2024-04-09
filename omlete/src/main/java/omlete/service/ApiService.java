package omlete.service;

import java.util.List;

import omlete.dto.Contents;

public interface ApiService {
	String mid();
	List<Contents> getMovieList();
}
