package omlete.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.service.ReviewService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/review")
public class ReviewController {
	private final ReviewService reviewService;
	
	@RequestMapping("/list")
	public String review(@RequestParam(defaultValue = "1") int pageNum, @RequestParam(defaultValue = "1") int reviewKind, Model model) {
		Map<String, Object> map = reviewService.getReviewList(reviewKind ,pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("reviewList", map.get("reviewList"));
		model.addAttribute("reviewCount", reviewService.selectReviewCount(reviewKind));
		
		return "review/review_list";
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
	
	@RequestMapping("/review_list_short")
	public String reviewShort() {
		return "review/review_list_short";
	}
	
	@RequestMapping("/review_list_long")
	public String reviewLong() {
		return "review/review_list_long";
	}
	
	@RequestMapping("/reviewListTest")
	public String reviewListTest() {
		return "review/reviewListTest";
	}
	
	/*
	 * 오믈렛 TilesController.java 참조
	@RequestMapping(value = "/review_write", method = RequestMethod.GET)
	public String reviewWrite() {
		return "review/review_write";
	}
	*/
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String reviewWrite() {

		return "/review/review_write";
	}
	
}
