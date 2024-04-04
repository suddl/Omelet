package omlete.mapper;

import java.util.List;

import omlete.dto.Contents;

public interface ContentsMapper {
	 //contents를 추가
	 int insertContents(Contents contents);	
	 //모든 contents 불러오기
	 List<Contents> selectContentsList();
	 //작품id로 해당 작품정보 불러오기
	 Contents selectContents(int contentsNo);
	 
}
