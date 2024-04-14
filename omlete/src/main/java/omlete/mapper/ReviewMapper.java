package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Review;

public interface ReviewMapper {
	int insertReview(Review review);

	int deleteReview(int reviewNo);

	int updateReview(Review review);

	Review selectReview(int reviewNo);

	int selectReviewCount(int reviewKind);

	List<Review> selectReviewList(Map<String, Object> map);

	List<Review> selectReviewListOrder();

	int selectReviewCountMember(int reviewMember);

	int selectReviewCountTotalMovie();

	int selectReviewCountTotalTv();

	
	List<Review> selectReviewMemberList(Map<String, Object> map);
	
}
