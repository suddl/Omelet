package omlete.service;

import java.util.List;
import java.util.Map;

import omlete.dto.Review;

public interface ReviewService {
	void addReview(Review review);

	void modifyReview(Review review);
	void modifyRate(float data, int reviewMember, int reviewKind, int reviewWork);

	void removeReview(int reviewNo);

	Review getReview(int reviewNo); // Review 검색
	Review getReviewByMemberno(int memberNo, int contentsNo);	//회원번호로 검색
	
	List<Review> getReviewListOrder();

	Map<String, Object> getReviewList(int reviewKind, int pageNum); // 명대사/짧은글/긴글

	int selectReviewCount(int reviewKind);
	
	
	// 마이페이지
	int getMemberReviewCount(int reviewMember);

	int selectReviewCountTotalMovie();

	int selectReviewCountTotalTv();

	Map<String, Object> getReviewMemberList(int reviewMember, int pageNum);

	
	
}
