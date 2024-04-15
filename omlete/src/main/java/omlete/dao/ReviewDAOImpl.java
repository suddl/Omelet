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
	
	@Override
	public int updateRate(float reviewStar, int reviewMember, int reviewKind,int reviewWork) {
		return sqlSession.getMapper(ReviewMapper.class).updateRate(reviewStar, reviewMember, reviewKind,reviewWork);
	}
	
	

	// 리뷰 검색
	@Override
	public Review selectReviewByMemberno(int memberNo,int contentsNo) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewByMemberno(memberNo,contentsNo);
	}
	
	//회원번호로 리뷰 검색
	@Override
	public Review selectReview(int reviewNo) {
		return sqlSession.getMapper(ReviewMapper.class).selectReview(reviewNo);
	}

	// 리뷰 페이징 처리 관련
	@Override
	public int selectReviewCount(int reviewKind) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCount(reviewKind);
	}

	// 리뷰 명대사/짧은글/긴글
	@Override
	public List<Review> selectReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewList(map);
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
	public int selectReviewCountTotalMovie(int reviewMember) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCountTotalMovie(reviewMember);
	}

	@Override
	public int selectReviewCountTotalTv(int reviewMember) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCountTotalTv(reviewMember);

	}

	@Override
	public List<Review> selectReviewMemberList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewMemberList(map);
	}


}
