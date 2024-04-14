package omlete.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
review_date는 sysdate 입니다.

create table review(review_no number primary key, review_kind number, review_member number, review_content varchar2(300), review_date date
    , review_up number, review_down number, review_work number constraint review_work_fk references contents(contents_no), review_spoiler number
    , review_star number);
    
create sequence review_seq;
*/

@Data
<<<<<<< HEAD
=======
@Builder
@AllArgsConstructor
@NoArgsConstructor
>>>>>>> branch 'main' of https://github.com/suddl/Omelet.git
public class Review {
	private int reviewNo;
	private int reviewKind;
	private int reviewMember;
	private int reviewContent;
	private String reviewDate;
	private int reviewUp;
	private int reviewDown;
	private int reviewWork; 
	private int reviewSpoiler;
	private int reviewStar;
	private String memberNickname;
	private String contentsTname; 
	private String reviewContentsType;
}
