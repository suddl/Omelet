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
	//추가
	@Override
	public int insertMoon(Moon moon) {
		return sqlSession.getMapper(MoonMapper.class).insertMoon(moon);
	}
	//게시글 검색
	@Override
	public Moon selectMoon(int moonNo) {
		return sqlSession.getMapper(MoonMapper.class).selectMoon(moonNo);
	}
	//총개수
	@Override
	public int selectMoonCount() {
		return sqlSession.getMapper(MoonMapper.class).selectMoonCount();
	}
	//리스트
	@Override
	public List<Moon> selectMoonList(Map<String, Object> map) {
		return sqlSession.getMapper(MoonMapper.class).selectMoonList(map);
	}

}
