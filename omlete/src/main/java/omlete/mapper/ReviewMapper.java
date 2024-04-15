package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Review;

public interface ReviewMapper {
	int insertReview(Review review);

	int deleteReview(int reviewNo);

	int updateReview(Review review);
	int updateRate(float reviewStar, int reviewMember, int reviewKind,int reviewWork);

	Review selectReview(int reviewNo);
	Review selectReviewByMemberno(int memberNo, int contentsNo);

	int selectReviewCount(int reviewKind);

	List<Review> selectReviewList(Map<String, Object> map);

	List<Review> selectReviewListOrder();

	int selectReviewCountMember(int reviewMember);

	int selectReviewCountTotalMovie(int reviewMember);

	int selectReviewCountTotalTv(int reviewMember);

	
	List<Review> selectReviewMemberList(Map<String, Object> map);
	
}
