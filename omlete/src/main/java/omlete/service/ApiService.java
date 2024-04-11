package omlete.service;

import java.util.List;

import omlete.dto.Actors;
import omlete.dto.Contents;

public interface ApiService {
	List<String> getmid(int page); 
	String setActor(String mid);
}
