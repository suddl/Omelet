package omlete.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import omlete.dto.Notice;
import omlete.dto.Wish;


public interface WishService {

	//추가
	void addWish(Wish wish);
	//삭제
	void removeWish(int wishNo); 
	//상세보기
	public Wish getWish(int contentsNo, int memberNo);

	
}