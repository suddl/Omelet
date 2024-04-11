package omlete.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Moon;
import omlete.mapper.MoonMapper;

@Repository
@RequiredArgsConstructor
public class MoonDAOImpl implements MoonDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertMoon(Moon moon) {
		return sqlSession.getMapper(MoonMapper.class).insertMoon(moon);
	}
	@Override
	public Moon selectMoon(int moonNo) {
		return sqlSession.getMapper(MoonMapper.class).selectMoon(moonNo);
	}

	@Override
	public int selectMoonCount() {
		return sqlSession.getMapper(MoonMapper.class).selectMoonCount();
	}

	@Override
	public List<Moon> selectMoonList(Map<String, Object> map) {
		return sqlSession.getMapper(MoonMapper.class).selectMoonList(map);
	}

}
