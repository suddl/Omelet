package omlete.mapper;

import java.util.List;

import omlete.dto.Contents;

public interface ContentsMapper {
	 int insertContents(Contents contents);
	 List<Contents> selectContentsList();
}
