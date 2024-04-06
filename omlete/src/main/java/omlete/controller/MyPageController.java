package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@RequestMapping(value = "/profile")
	public String mypage() {
		return "mypage/profile";
	}
	
	// 내 정보 수정
	@RequestMapping(value = "/profile/updateInfo")
	public String updateInfo() {
		return "redirect:mypage/myinfo_update";
	}
	
	// 내가 좋아요한 영화 작품 목록
	@RequestMapping(value = "/profile/likeMovie")
	public String myLikeMovie() {
		return "mypage/myfavorite_movie";
	}
	
	// 내가 좋아요한 tv 작품
	@RequestMapping(value = "/profile/likeTv")
	public String myLikeTv() {
		return "mypage/myfavorite_tv";
	}
	
	// 내가 좋아요한 리뷰
	@RequestMapping(value = "/profile/likeReview")
	public String myLikeReview() {
		return "mypage/mypage_goodReviewList";
	}
	
	// 내가 작성한 리뷰
	@RequestMapping(value = "/profile/writeReview")
	public String myWriteReview() {
		return "mypage/mypage_writeReviewList";
	}
	
	
	// 마이뱃지 목록
	@RequestMapping(value = "/profile/mybadge")
	public String myBadge() {
		return "mypage/badge";
	}
	
	// 탈퇴
	@RequestMapping(value = "/profile/resign")
	public String myResign() {
		return "mypage/mypage_resign";
	}
	
	
}
