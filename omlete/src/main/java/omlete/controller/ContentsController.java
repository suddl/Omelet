package omlete.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import omlete.dto.Actors;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.dto.Review;
import omlete.service.ActorContentsService;
import omlete.service.ActorsService;
import omlete.service.ContentsService;
import omlete.service.ReviewService;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class ContentsController {
	private final ContentsService contentsService;	
	private final ReviewService reviewService;
	private final ActorContentsService acService;
	private final ActorsService actorService;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(Model m, int no, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		List<Actors> actorlist = null;
		String[] gen = null;
		if(loginMember!=null) {
			Review review = reviewService.getReviewByMemberno(loginMember.getMemberNo(), no);
			m.addAttribute("review", review);
		}
		
		actorlist =actorService.getActorsListByContents(no);
		m.addAttribute("actor", actorlist);
		Contents contents = contentsService.getContents(no);
		m.addAttribute("contents", contents);
		gen=contents.getContentsGenre().split("\n");
		m.addAttribute("gen",gen);
		return "detail/product-detail";
	}
	
	//리뷰쓰기 버튼을 누르면 리뷰 작성 페이지로 이동
	@RequestMapping(value = "/writeReview")
	public String writeReview(HttpSession session) {	
		Member loginMember = (Member) session.getAttribute("loginMember");
		
	    if (loginMember != null) {	      
	    	return "review/review_write";
	    }
	    return "redirect:/login/member";
	}
	
	//찜하기 기능
	@RequestMapping(value = "/wish")
	public boolean wishContents(HttpServletRequest request, HttpServletResponse response, Object handler) {	
		HttpSession session=request.getSession();
			
		Member loginMember=(Member)session.getAttribute("loginMember");
		System.out.println(loginMember);
		if(loginMember == null) {
			return false;				
		}
			
		return true;

	}	

	@RequestMapping(value = "/rate", method = RequestMethod.POST)
	@ResponseBody
	public String rate(@RequestParam("data") int data, @RequestParam("contentsNo") int contentsNo, HttpSession session) {
		Review review = new Review();
		
		Member loginMember = (Member) session.getAttribute("loginMember");
		System.out.println("data="+data);
	    if (loginMember != null) {	  
	    	review = reviewService.getReviewByMemberno(loginMember.getMemberNo(), contentsNo);
	    	if(review!=null) {
	    		 
	    		 reviewService.modifyRate(data, loginMember.getMemberNo(), 3, contentsNo);
	    		 
	    		 return "ok";
	    		
	    	}
	    	review = new Review();
	    	review.setReviewStar(data);
		    review.setReviewMember(loginMember.getMemberNo());
		    review.setReviewKind(3);
		    review.setReviewWork(contentsNo);
		    reviewService.addReview(review);
    
		    return "ok";

	    }
	    
	    return "false";
	}

}
	
	

	
	
	
	

