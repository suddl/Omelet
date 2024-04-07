package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

import omlete.dto.Contents;
import omlete.mapper.ContentsMapper;

@Repository
@RequiredArgsConstructor
public class ContentsDAOImpl implements ContentsDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertContents(Contents contents) {
		return sqlSession.getMapper(ContentsMapper.class).insertContents(contents);
		
	}
	@Override
	public List<Contents> selectContentsList(){
		return sqlSession.getMapper(ContentsMapper.class).selectContentsList();
	}
	@Override
	public Contents selectContents(int contentsNo) {
		return sqlSession.getMapper(ContentsMapper.class).selectContents(contentsNo);
	}
	@Override
	public List<Contents> getContentsInfoList(String type) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
