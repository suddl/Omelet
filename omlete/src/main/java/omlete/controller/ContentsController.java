package omlete.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.service.ApiService;
import omlete.service.ContentsService;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class ContentsController {
	private final ContentsService contentsService;	
	private final ApiService apiService;
	
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
	
	
	
	
	
	
	
}
