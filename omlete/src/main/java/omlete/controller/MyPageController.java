
package omlete.controller;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.exception.ContentsNotFoundException;
import omlete.service.ContentsService;
import omlete.service.EventUserService;
import omlete.service.MemberService;
import omlete.service.MoonService;
import omlete.service.ReviewService;


@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
	private final MemberService memberService;
	private final ContentsService contentsService;
	private final EventUserService eventUserService;
	private final MoonService moonService;
	private final ReviewService reviewService;
	
	// 마이페이지 메인화면
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model, HttpSession session) {
	    Member loginMember = (Member) session.getAttribute("loginMember");
	    if (loginMember != null) {
	        int memberFavorite1 = loginMember.getMemberFavorite1(); 
	        Contents favoriteContent = null;
	        try {
	            favoriteContent = contentsService.getContents(memberFavorite1); 
	        } catch (ContentsNotFoundException e) {
	        	return "login/myfavorite";
	        }
	        model.addAttribute("favoriteContent", favoriteContent); 
	    }
	    return "mypage/profile";
	}	
	// 내 정보 수정
	@RequestMapping(value = "/updateInfo", method = RequestMethod.GET)
	public String updateInfo() {
		return "mypage/myinfo_update";
	}
	
	@RequestMapping(value = "/nicknameCheck", method = RequestMethod.POST)
	@ResponseBody
	public String checkNickname(@RequestParam String memberNickname) {
	    if (memberService.getMemberNickname(memberNickname) == null) {
	        return "ok";
	    }
	    return "fail";
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
	@RequestMapping(value = "/likeMovie")
	public String myLikeMovie() {
		return "mypage/myfavorite_movie";
	}
	
	// 내가 좋아요한 tv 작품
	@RequestMapping(value = "/likeTv")
	public String myLikeTv() {
		return "mypage/myfavorite_tv";
	}
	
	// 내가 좋아요한 리뷰
	@RequestMapping(value = "/likeReview")
	public String myLikeReview() {
		return "mypage/mypage_goodReviewList";
	}
	
	// 내가 작성한 리뷰
	@RequestMapping(value = "/writeReview")
	public String myWriteReview(@RequestParam(defaultValue = "1") int pageNum, Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
	    Map<String, Object> map = reviewService.getReviewMemberList(loginMember.getMemberNo(), pageNum);

	    model.addAttribute("pager", map.get("pager"));
	    model.addAttribute("reviewList", map.get("reviewList"));
	    model.addAttribute("reviewCount", reviewService.getMemberReviewCount(loginMember.getMemberNo()));
		
		return "mypage/mypage_writeReviewList";
	}
	
	// 내가 작성한 문의
	@RequestMapping(value = "/writeMoon")
	public String myWriteMoon(@RequestParam(defaultValue = "1") int pageNum, Model model, HttpSession session) {
	    Member loginMember = (Member) session.getAttribute("loginMember");
	    Map<String, Object> map = moonService.getMoonMemberList(loginMember.getMemberNo(), pageNum);

	    model.addAttribute("pager", map.get("pager"));
	    model.addAttribute("moonList", map.get("moonList"));

	    return "mypage/mymoon_write"; 
	}
	
	// 내가 참여한 이벤트
	@RequestMapping(value = "/myevent")
	public String myEvent(@ModelAttribute Member member, HttpSession session, Model model) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember.getMemberNo()==member.getMemberNo()) {
			session.setAttribute("loginMember", memberService.getMemberNo(member.getMemberNo()));
		}
		
		model.addAttribute("eventUserList", eventUserService.getEventUserList(loginMember.getMemberNo()));
		model.addAttribute("eventUserRecordList", eventUserService.getEventUserRecordList(loginMember.getMemberNo()));
		
		return "mypage/myevent";
	}
	
	// 마이뱃지 목록
	@RequestMapping(value = "/mybadge")
	public String myBadge() {
		return "mypage/badge";
	}
	
	// 탈퇴
	@RequestMapping(value = "/resign")
	public String myPageResign(HttpSession session) {
		Integer loginMemberNo = (Integer)session.getAttribute("memberNo");
		if (loginMemberNo != null) {
	        memberService.modifyMemberResign(loginMemberNo);
	        session.invalidate(); 
	    }
		return "/mypage/member_resign";
	}
	
	@RequestMapping(value = "/resignMain")
	public String myResign() {
		return "redirect:/mypage/resign";
	}
	
	
}

