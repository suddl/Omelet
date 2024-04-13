
package omlete.controller;


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
import omlete.service.ContentsService;
import omlete.service.MemberService;


@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
	private final MemberService memberService;
	private final ContentsService contentsService;
	
	// 마이페이지 메인화면
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model, HttpSession session) {
	    Member loginMember = (Member) session.getAttribute("loginMember");
	    if (loginMember != null) {
	        Integer memberFavorite1 = loginMember.getMemberFavorite1(); // int 대신 Integer 사용
	        if (memberFavorite1 != null) { // memberFavorite1이 null이 아닐 때만 처리
	            Contents favoriteContent = contentsService.getContents(memberFavorite1); 
	            if (favoriteContent != null) { // getContents의 반환값이 null이 아닐 때만 처리
	                model.addAttribute("favoriteContent", favoriteContent);
	            } else {
	                // favoriteContent가 null이면 이동할 페이지를 반환하도록 처리
	                return "login/myfavorite"; // 예시로 대체 페이지로 이동하도록 설정
	            }
	        }
	    }
	    // 나머지 경우에는 기본적으로 마이페이지로 이동
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
	public String myWriteReview() {
		return "mypage/mypage_writeReviewList";
	}
	
	// 내가 작성한 문의
	@RequestMapping(value = "/writeMoon")
	public String myWriteMoon() {
		return "mypage/mymoon_write";
	}
	
	@RequestMapping(value = "/myevent")
	public String myEvent() {
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

