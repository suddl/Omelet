package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.service.ContentsService;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class ContentsController {
	private ContentsService contentsService;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(Model m, int no) {
		
		Contents contents = contentsService.getContents(no);
		m.addAttribute("contents", contents);
		
		return "detail/product-detail";
	}
	
	//리뷰쓰기 버튼을 누르면 리뷰 작성 페이지로 이동
	@RequestMapping(value = "/writeReview")
	public String writeReview() {	
		return "review/review_write";
	}
	
	
	@RequestMapping("/api/getInfo")
	public String getInfo() {
		int pages = 1;
		
		
		return "ok";
	
	}
	
	
}
