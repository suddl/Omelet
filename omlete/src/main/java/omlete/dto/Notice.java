package omlete.dto;

import lombok.Data;

/*
create table notice(
notice_no NUMBER PRIMARY KEY,
notice_title NUMBER,
notice_content VARCHAR2(3000),
notice_count NUMBER,
notice_date DATE,
notice_status NUMBER,
notice_term DATE,
notice_image VARCHAR2(100));
*/

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
