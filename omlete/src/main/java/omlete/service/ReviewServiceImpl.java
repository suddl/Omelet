package omlete.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.ReviewDAO;
import omlete.dto.Review;
import omlete.util.Pager;

@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {
	private final ReviewDAO reviewDAO;
	
	@Override
	public void addReview(Review review) {
		reviewDAO.insertReview(review);
	}

	@Override
	public void modifyReview(Review review) {
		reviewDAO.updateReview(review);
	}

	@Override
	public void removeReview(int reviewNo) {
		reviewDAO.deleteReview(reviewNo);
	}

	@Override
	public Review getReview(int reviewNo) {
		return reviewDAO.selectReview(reviewNo);
	}

	@Override
	public Map<String, Object> getReviewList(int pageNum, int reviewKind) {
		int titleSize = reviewDAO.selectReviewCount();
		int pageSize = 10;
		int blockSize = 10;
		
		Pager pager = new Pager(pageNum, titleSize, pageSize, blockSize);
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("reviewKind", reviewKind);
		
		List<Review> reviewList = reviewDAO.selectReviewList(pageMap, reviewKind);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("reviewList", reviewList);
		
		return resultMap;
	}
	
	@Override
	public List<Review> getReviewListOrder() {
		return reviewDAO.selectReviewListOrder();
	}
	
	
	
	

	@Override
	public int getMemberReviewCount(int reviewNo) {
		int memberReviewCount=reviewDAO.selectReviewCountMember(reviewNo);
		return memberReviewCount;
	}

	@Override
	public int selectReviewCountTotalMovie() {
		int memberTotalMovieReview=reviewDAO.selectReviewCountTotalMovie();
		return memberTotalMovieReview;
	}

	@Override
	public int selectReviewCountTotalTv() {
		int memberTotalTVReview=reviewDAO.selectReviewCountTotalTv();
		return memberTotalTVReview;
	}

}
