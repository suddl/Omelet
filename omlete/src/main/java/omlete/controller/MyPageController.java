package omlete.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.service.MemberService;


@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
	private final MemberService memberService;
	
	// 마이페이지 메인화면
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile() {
		return "mypage/profile";
	}
	
	
	// 내 정보 수정
	@RequestMapping(value = "/updateInfo", method = RequestMethod.GET)
	public String updateInfo() {
		return "mypage/myinfo_update";
	}
	
	@RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
	public String updateInfo(@ModelAttribute Member member, HttpSession session) {
		memberService.modifyMemberInfo(member);
		
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember.getMemberNo()==member.getMemberNo()) {
			session.setAttribute("loginMember", memberService.getMemberNo(member.getMemberNo()));
		}
		
		return "redirect:/mypage/profile";
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
	
	// 내가 작성한 문의
	@RequestMapping(value = "/profile/writeMoon")
	public String myWriteMoon() {
		return "mypage/mymoon_write";
	}
	
	@RequestMapping(value = "/profile/myevent")
	public String myEvent() {
		return "mypage/myevent";
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
