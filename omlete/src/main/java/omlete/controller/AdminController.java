package omlete.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.dto.Review;
import omlete.service.ContentsService;
import omlete.service.MemberService;
import omlete.service.ReviewService;
 
@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
    
	private final MemberService memberService;
    private final ContentsService contentsService;
    @Autowired
    private WebApplicationContext context;
    //private ReviewService reviewService;
    
    // 관리자 메인 페이지 이동
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    //public String adminMain(HttpSession session) {
    public String adminMain() {
    	/*
    	Integer memberStatus = (Integer)session.getAttribute("memberStatus");
        if(memberStatus == null || memberStatus != 9) {
            return "exception.BadRequestException";
        }
        */
        return "admin/index";
    }
    /*
    //작품 관리
    @RequestMapping(value = "/contents", method = RequestMethod.GET)
    public String ContentsList(@RequestParam(value = "contentsType") String contentsType, Model m) {
    	if(contentsType.equals("%EC%98%81%ED%99%94") || contentsType.equals("영화")) {
    	m.addAttribute("movieList", contentsService.getContentsCountByType("영화"));
    	return "contents/movie";
    	} else {
    		m.addAttribute("tvList", contentsService.getContentsCountByType("TV"));
    	return "contents/tv";
    	}
    }
    */
    
 // 작품 관리(영화)
    @RequestMapping(value = "/contents_movie", method = RequestMethod.GET)
    public String movieList(Model m) {
        List<Contents> movieList = contentsService.getContentsListByType("영화");
        if (movieList != null) {
            m.addAttribute("movieList", movieList);
        } else {
            System.out.println("영화 정보를 가져올 수 없습니다.");
            m.addAttribute("movieList", new ArrayList<Contents>());
        }
        return "admin/contents_movie";
    }
    
    // 작품 관리(TV)
    @RequestMapping(value = "/contents_tv", method = RequestMethod.GET)
    public String tvList(Model m) {
        m.addAttribute("tvList", contentsService.getContentsListByType("TV"));
        return "admin/contents_tv";
    }
    
    //작품 추가(영화)
    @RequestMapping(value = "/contents_add_movie", method = RequestMethod.GET)
    public String movieAdd() { 
    	return "admin/contents_add_movie";
    }
    
    //작품 추가(tv)
    @RequestMapping(value = "/contents_add_tv", method = RequestMethod.GET)
    public String tvAdd() {
    	return "admin/contents_add_tv";
    }
    
    // 작품 추가(영화)
    @RequestMapping(value = "/contents_add_movie", method = RequestMethod.POST)
    public String movieAdd(@ModelAttribute Contents contents, @RequestParam List<MultipartFile> uploadFileList,  Model m ) throws IllegalStateException, IOException {
    	contentsService.addContents(contents);
    	String uploadDirectory=context.getServletContext().getRealPath("/resources/images/upload");
    	
    	List<String> contentsImageList=new ArrayList<String>();
    	
    	for(MultipartFile multipartFile : uploadFileList) {
    		String contentsImageName=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
    		File file=new File(uploadDirectory, contentsImageName);
    		multipartFile.transferTo(file);
        
    		contentsImageList.add(uploadDirectory);
    	}
    	m.addAttribute("contents", contents);
    	m.addAttribute("contentsImageList", contentsImageList);
    	
    	return "redirect:/admin/contents_movie";
    		}
    
    // 작품 추가(TV)
    @RequestMapping(value = "/contents_add_tv", method = RequestMethod.POST)
    public String tvAdd(@ModelAttribute Contents contents, @RequestParam List<MultipartFile> uploadFileList,  Model m ) throws IllegalStateException, IOException {
    	contentsService.addContents(contents);
    	String uploadDirectory=context.getServletContext().getRealPath("/resources/images/upload");
    	
    	List<String> contentsImageList=new ArrayList<String>();
    	
    	for(MultipartFile multipartFile : uploadFileList) {
    		String contentsImageName=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
    		File file=new File(uploadDirectory, contentsImageName);
    		multipartFile.transferTo(file);
        
    		contentsImageList.add(uploadDirectory);
    	}
    	m.addAttribute("contents", contents);
    	m.addAttribute("contentsImageList", contentsImageList);
    	
    	return "redirect:/admin/contents_tv";
    		}

    //작품 수정(영화)
    @RequestMapping(value = "/contents_modifyMovie", method = RequestMethod.POST)
    public String contentsModifyMovie(@ModelAttribute Contents contents, @RequestParam List<MultipartFile> uploadFileList, Model m ) throws IllegalStateException, IOException {
        contentsService.modifyContents(contents);
        String uploadDirectory=context.getServletContext().getRealPath("/resources/images/upload");
    	
    	List<String> contentsList=new ArrayList<String>();
    	
    	for(MultipartFile multipartFile : uploadFileList) {
    		String contentsImageName=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
    		File file=new File(uploadDirectory, contentsImageName);
    		multipartFile.transferTo(file);
        
    		contentsList.add(uploadDirectory);
    	}
    	m.addAttribute("contents", contents);
    	m.addAttribute("contentsList", contentsList);
    	
        return "redirect:/admin/contents_movie";
    	}

    //작품 수정(TV)
    @RequestMapping(value = "/contents_modifyTV", method = RequestMethod.POST)
    public String contentsModifyTV(@ModelAttribute Contents contents, @RequestParam List<MultipartFile> uploadFileList, Model m ) throws IllegalStateException, IOException {
    	contentsService.modifyContents(contents);
    	String uploadDirectory=context.getServletContext().getRealPath("/resources/images/upload");
    	
    	List<String> contentsList=new ArrayList<String>();
    	
    	for(MultipartFile multipartFile : uploadFileList) {
    		String contentsImageName=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
    		File file=new File(uploadDirectory, contentsImageName);
    		multipartFile.transferTo(file);
    		
    		contentsList.add(uploadDirectory);
    	}
    	m.addAttribute("contents", contents);
    	m.addAttribute("contentsist", contentsList);
    	
    	return "redirect:/admin/contents_tv";
    }
    
    //작품 삭제(영화)
    @RequestMapping(value = "/contents_deleteMovie", method = RequestMethod.DELETE)
    public String contentsRemoveMovie(@RequestParam int contentsNo) {
		Contents contents=contentsService.getContents(contentsNo);
		String uploadDirectory = context.getServletContext().getRealPath("/WEB-INF/upload");
		//서버 디렉토리에 저장된 게시글의 파일 삭제 처리
		File file = new File(uploadDirectory, Integer.toString(contents.getContentsNo()));
	    if (file.exists()) {
	        file.delete(); // 파일 삭제
	    }
		
		contentsService.removeContents(contentsNo);
		return "redirect:/admin/contents_movie";		
    }
    
    //작품 삭제(TV)
    @RequestMapping(value = "/contents_deleteTV", method = RequestMethod.DELETE)
    public String contentsRemoveTV(@RequestParam int contentsNo) {
    	Contents contents=contentsService.getContents(contentsNo);
    	String uploadDirectory = context.getServletContext().getRealPath("/WEB-INF/upload");
    	//서버 디렉토리에 저장된 게시글의 파일 삭제 처리
    	File file = new File(uploadDirectory, Integer.toString(contents.getContentsNo()));
    	if (file.exists()) {
    		file.delete(); // 파일 삭제
    	}
    	
    	contentsService.removeContents(contentsNo);
    	return "redirect:/admin/contents_tv";		
    }
    
    //회원 관리
    @RequestMapping(value = "/member", method = RequestMethod.GET)
    public String memberList(Model m) {
        List<Member> memberList = memberService.getMemberList();
        if (memberList != null) {
            m.addAttribute("memberList", memberList);
        } else {
            System.out.println("회원 정보를 가져올 수 없습니다.");
            m.addAttribute("memberList", new ArrayList<Member>());
        }
        return "admin/member";
    }
    
    //회원 상태 변경
    @RequestMapping(value = "/member_modify", method = RequestMethod.POST)
    public String modifyMemberStatus(@RequestParam int memberStatus, HttpSession session) {
        memberService.modifyMeberStatus(memberStatus);
        return "redirect:/admin/member";
    }
}
    /*
    // 공지사항으로 이동
    @RequestMapping(value = "/notice ", method = RequestMethod.GET)
    public String notice(HttpSession session) {
        return "notice";
    }
    
    // 공지사항 글쓰기
    @RequestMapping(value = "/notice_write", method = RequestMethod.GET)
    public String writeNotice() {
        return "notice_write";
    }
    
    // 공지사항 글쓰기(예외)
    @RequestMapping(value = "/notice_write", method = RequestMethod.POST)
    public String writeNoticeException(@RequestParam int memberStatus) {
        memberService.getMemberStatus(memberStatus);
        return "redirect:/login/login";
    }
    
    //이벤트로 이동
    @RequestMapping(value = "/event", method = RequestMethod.GET)
    public String event(HttpSession session) {
    	return "event";
    }
    
    //이벤트 글쓰기
    @RequestMapping(value = "/event_write", method = RequestMethod.POST)
    public String writeEvent() {
    	return "event_write";
    }
    
    //이벤트 글쓰기(예외)
    @RequestMapping(value = "/event_write", method = RequestMethod.POST)
    public String writeEventException(@ModelAttribute Member memberStatus) {
    	memberService.getMemberStatus(memberStatus);
    	return "redirect:/login/login";
    }
    
    //1대1 문의로 이동
    @RequestMapping(value = "/moon_view", method = RequestMethod.GET)
    public String inquiry(HttpSession session) {
    	return "moon_view";
    }
    
    //1대1 문의 답변하기
    @RequestMapping(value = "/answer", method = RequestMethod.POST)
    public String writeAnswer() {
    	return "answer";
    }
    
    //1대 1문의 답변하기(예외)
    @RequestMapping(value = "/answer", method = RequestMethod.POST)
    public String writeAnswerException(@ModelAttribute Member memberStatus) {
    	memberService.getMemberStatus(memberStatus);
    	return "redirect:/login/login";
    }
    
    //리뷰 관리
    @RequestMapping(value = "/review", method = RequestMethod.GET)
    public String reviewList(Model m) {
        m.addAttribute("reviewList", reviewService.getAllReviewList());
        return "review";        	
    }
    
    //신고된 리뷰 관리
    @RequestMapping(value = "/review_reported", method = RequestMethod.GET)
    public String reportedReviewList(Model m) {
    	m.addAttribute("reportedReviewList", reviewService.getReportedReviewList());
    	return "review_reported";
    }
    
    //리뷰 삭제
    @RequestMapping(value = "/review_remove", method = RequestMethod.DELETE)
    public String removeReview(@RequestParam int reviewNo) {
    	reviewService.removeReview(reviewNo);
    	return "review";
    }
    
    // 메인 페이지 이동
    @RequestMapping(value = "/main_body", method = RequestMethod.GET)
    public String main(HttpSession session) {
        Integer memberStatus = (Integer)session.getAttribute("memberStatus");

        return "main/main_body";
    }
    
    // 로그아웃
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/main/main_body";
    }
    
*/
