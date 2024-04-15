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
	public void modifyRate(float reviewStar, int reviewMember, int reviewKind, int reviewWork) {
		reviewDAO.updateRate(reviewStar, reviewMember, reviewKind, reviewWork);
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
	public Review getReviewByMemberno(int memberNo,int contentsNo) {
		return reviewDAO.selectReviewByMemberno(memberNo,contentsNo);
	}

	@Override
	public int selectReviewCount(int reviewKind) {
		return reviewDAO.selectReviewCount(reviewKind);
	}

	
	
	@Override
	public Map<String, Object> getReviewList(int reviewKind, int pageNum) {
		int totalSize = reviewDAO.selectReviewCount(reviewKind);
		int pageSize = 8;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("reviewKind", reviewKind);
		
		List<Review> reviewList = reviewDAO.selectReviewList(pageMap);
		
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
	public int selectReviewCountTotalMovie(int reviewMember) {
		int memberTotalMovieReview=reviewDAO.selectReviewCountTotalMovie(reviewMember);
		return memberTotalMovieReview;
	}

	@Override
	public int selectReviewCountTotalTv(int reviewMember) {
		int memberTotalTVReview=reviewDAO.selectReviewCountTotalTv(reviewMember);
		return memberTotalTVReview;
	}

	@Override
	public Map<String, Object> getReviewMemberList(int reviewMember, int pageNum) {
		int totalSize = reviewDAO.selectReviewCountMember(reviewMember);
	    int pageSize = 8;
	    int blockSize = 5;

	    Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

	    Map<String, Object> pageMap = new HashMap<>();
	    pageMap.put("reviewMember", reviewMember); 
	    pageMap.put("startRow", pager.getStartRow());
	    pageMap.put("endRow", pager.getEndRow());
	    List<Review> reviewList = reviewDAO.selectReviewMemberList(pageMap);
	    
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("pager", pager);
	    resultMap.put("reviewList", reviewList);

	    return resultMap;
	}

	

}
