package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Wish;
import omlete.mapper.ReviewMapper;
import omlete.mapper.WishMapper;


@Repository
@RequiredArgsConstructor
public class WishDAOImpl implements WishDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertWishContents(Wish wish) {
		
		return sqlSession.getMapper(WishMapper.class).insertWishContents(wish);
	}

	@Override
	public int deleteWishContents(int wishNo) {
		return sqlSession.getMapper(WishMapper.class).deleteWishContents(wishNo);
	}

	@Override
	public Wish getWish(int contentsNo, int memberNo) {
		return sqlSession.getMapper(WishMapper.class).getWish(contentsNo, memberNo);
	}
	
	

}
