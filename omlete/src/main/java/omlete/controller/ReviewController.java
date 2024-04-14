package omlete.controller;

import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.service.ReviewService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/review")
public class ReviewController {
	private final ReviewService reviewService;
	
	@RequestMapping("/review_list")
	public String review(@RequestParam(defaultValue = "1") int pageNum, int reviewKind, Model model) {
		Map<String, Object> map = reviewService.getReviewList(pageNum, reviewKind);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("reviewList", map.get("reviewList"));
		
		return "review/review_list";
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
