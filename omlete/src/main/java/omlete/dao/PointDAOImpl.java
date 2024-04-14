package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Point;
import omlete.mapper.PointMapper;

@Repository
@RequiredArgsConstructor
public class PointDAOImpl implements PointDAO {
	public final SqlSession sqlSession;

	@Override
	public int insertPoint(Point point) {
		return sqlSession.getMapper(PointMapper.class).insertPoint(point);
	}

	

}
