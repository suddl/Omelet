package omlete.service;

import java.util.List;
import java.util.Map;

import omlete.dto.Review;

public interface ReviewService {
	void addReview(Review review);
	void modifyReview(Review review);
	void removeReview(int reviewNo);
	Review getReview(int reviewNo); //Review 검색
	List<Review> getReviewListOrder();
	Map<String, Object> getReviewList(int pageNum, int reviewKind); //명대사/짧은글/긴글
	
	// 마이페이지
	int getMemberReviewCount(int reviewNo);
	int selectReviewCountTotalMovie();
	int selectReviewCountTotalTv();
}
