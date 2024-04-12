package omlete.dto;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String memberId;
	private String memberPasswd;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private int memberLevel;
	private int memberBadge;
	private int memberStatus;
	private int memberPoint;
	private int memberFavorite1;
	private int memberFavorite2;
	private int memberFavorite3;
	private int memberReport;
	private String memberNickname;
    public Member() {}

    public Member(String memberName, String memberEmail) {
    this.memberName = memberName;
    this.memberEmail = memberEmail;
}
}
