package omlete.dto;

import lombok.Data;

@Data
public class EventUser {
	private int eventNo;
	private int eventStatus;
	private int eventMember;
	private String noticeTitle;
	private String noticeImage;
	private int pointStatus;
	private String pointDate;
	private int pointExtent;
	private String pointContent;
}
