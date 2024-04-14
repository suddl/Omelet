package omlete.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Review;
import omlete.mapper.ReviewMapper;

@Repository
@RequiredArgsConstructor
public class ReviewDAOImpl implements ReviewDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertReview(Review review) {
		return sqlSession.getMapper(ReviewMapper.class).insertReview(review);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return sqlSession.getMapper(ReviewMapper.class).deleteReview(reviewNo);
	}

	@Override
	public int updateReview(Review review) {
		return sqlSession.getMapper(ReviewMapper.class).updateReview(review);
	}

	// 리뷰 검색
	@Override
	public Review selectReview(int reviewNo) {
		return sqlSession.getMapper(ReviewMapper.class).selectReview(reviewNo);
	}

	// 리뷰 페이징 처리 관련
	@Override
	public int selectReviewCount() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCount();
	}

	// 리뷰 명대사/짧은글/긴글
	@Override
	public List<Review> selectReviewList(Map<String, Object> map, int reviewKind) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewList(map, reviewKind);
	}

	@Override
	public List<Review> selectReviewListOrder() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewListOrder();
	}

	// =====================================================================================
	@Override
	public int selectReviewCountMember(int reviewNo) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCountMember(reviewNo);
	}

	@Override
	public int selectReviewCountTotalMovie() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCountTotalMovie();
	}

	@Override
	public int selectReviewCountTotalTv() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCountTotalTv();

	}

	@Override
	public List<Review> selectReviewMemberList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewMemberList(map);
	}

	@Override
	public int selectReviewCountMemberReview(int reviewMember) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCountMemberReview(reviewMember);
	}

}
