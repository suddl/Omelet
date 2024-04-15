package omlete.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.ReviewDAO;
import omlete.dao.WishDAO;
import omlete.dto.Notice;
import omlete.dto.Review;
import omlete.dto.Wish;
import omlete.util.Pager;

@Service
@RequiredArgsConstructor
public class WishServiceImpl implements WishService {
	private final WishDAO wishDAO;
	
	@Override
	public void addWish(Wish wish) {
		wishDAO.insertWishContents(wish);
	}
	
	@Override
	public void removeWish(int wishNo) {
		wishDAO.deleteWishContents(wishNo);
	}

	@Override
	public Wish getWish(int contentsNo, int memberNo) {
		Wish wish = wishDAO.getWish(contentsNo, memberNo);
		return wish;
	}


	

}
