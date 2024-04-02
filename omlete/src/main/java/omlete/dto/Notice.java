package omlete.dto;

import lombok.Data;

@Data
public class Notice {
	private int noticeNo;
	private int noticeTitle;
	private String noticeContent;
	private int noticeCount;
	private String noticeDate;
	private int noticeStatus;
	private String noticeTerm;
	private String noticeImage;
	
}
