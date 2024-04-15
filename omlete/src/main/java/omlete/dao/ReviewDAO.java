package omlete.dao;

import java.util.List;
import java.util.Map;

import omlete.dto.Review;

public interface ReviewDAO {
	int insertReview(Review review);

	int deleteReview(int reviewNo);

	int updateReview(Review review);
	int updateRate(float reviewStar, int reviewMember, int reviewKind, int reviewWork);

	Review selectReview(int reviewNo);
	Review selectReviewByMemberno(int memberNo,int contentsNo);

	int selectReviewCount(int reviewKind);

	List<Review> selectReviewListOrder();

	List<Review> selectReviewList(Map<String, Object> map);

	// 마이페이지
	int selectReviewCountMember(int reviewMember);

	int selectReviewCountTotalMovie(int reviewMember);

	int selectReviewCountTotalTv(int reviewMember);

	List<Review> selectReviewMemberList(Map<String, Object> map);

}
