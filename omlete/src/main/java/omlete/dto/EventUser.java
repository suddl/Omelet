package omlete.dto;

import lombok.Data;

@Data
public class EventUser {
	private int eventNo;
	private int eventStatus;
	private int eventMember;
	private String noticeTitle;
	private String noticeImage;
}
