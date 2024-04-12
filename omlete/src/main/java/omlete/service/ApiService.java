package omlete.service;

import java.util.List;

import omlete.dto.Actors;
import omlete.dto.Contents;

public interface ApiService {
	List<String> getMoviemid(int page); 
	List<String> getTvmid(int page); 
	String setActor(String mid);
}
