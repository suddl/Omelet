package omlete.dao;

import omlete.dto.Contents;
import java.util.List;

public interface ContentsDAO {
	int insertContents(Contents contents);
	List<Contents> selectContentsList();
}
