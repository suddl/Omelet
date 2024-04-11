package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Review;

public interface ReviewMapper {
	int insertReview(Review review);
	int deleteReview(int reviewNo);
	int updateReview(Review review);
	Review selectReview(int reviewNo);
	int selectReviewCount();
	List<Review> selectReviewList(Map<String, Object> map, int reviewKind);
	List<Review> selectReviewListOrder(String orderBy);
	
	
	//마이페이지
	int selectReviewCountMember(int reviewNo);
	int selectReviewCountTotalMovie();
	int selectReviewCountTotalTv();
}
