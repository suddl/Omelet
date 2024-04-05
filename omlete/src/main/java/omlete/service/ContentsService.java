package omlete.service;

import java.util.List;

import omlete.dto.Contents;

public interface ContentsService {
	void addContents(Contents contents);
	List<Contents> getContentsList();
	Contents getContents(int contentsNo);
}
