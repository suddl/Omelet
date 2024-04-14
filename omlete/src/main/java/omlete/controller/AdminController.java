package omlete.controller;

import static org.springframework.test.web.client.response.MockRestResponseCreators.withBadRequest;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JacksonInject.Value;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.dto.Review;
import omlete.service.ContentsService;
import omlete.service.MemberService;
import omlete.service.MoonService;
import omlete.service.NoticeService;
import omlete.service.ReviewService;
 
@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController { 
    
	private final MemberService memberService;
    private final ContentsService contentsService;
    private final NoticeService noticeService;
    private final MoonService moonService;
    @Autowired
    private WebApplicationContext context;
    //private ReviewService reviewService;
    
    //로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String adminLogin() {
		return "admin/login";
		
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";	
	}
	
	   // 로그인 처리
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute Member member, HttpSession session){
        // 로그인 처리 로직
        Member loginMember = memberService.loginAuth(member);
        
        // 로그인 성공 시
        if (loginMember != null) {
            session.setAttribute("loginMember", loginMember);
            session.setAttribute("memberStatus", loginMember.getMemberStatus()); // memberStatus를 세션에 저장
            return "redirect:/admin/index"; // 성공 시 메인 페이지로 리다이렉트
        } else {
            // 로그인 실패 시
            return "redirect:/login"; // 다시 로그인 페이지로 리다이렉트 또는 오류 메시지 출력 등
        }
    }

    // 관리자 메인 페이지 이동
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String adminMain(HttpSession session) { 
        Integer memberStatus = (Integer) session.getAttribute("memberStatus");
        if(memberStatus == null || memberStatus != 9) {
            return "admin/login"; // 관리자가 아닌 경우 로그인 페이지로 리다이렉트
        } else {    
            return "admin/index"; // 관리자인 경우 관리자 메인 페이지로 이동
        }
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
    
    //작품 추가(TV)
    @RequestMapping(value = "/contents_add_tv", method = RequestMethod.GET)
    public String tvAdd() {
    	return "admin/contents_add_tv";
    }
    
 // 작품 수정(영화)
    @RequestMapping(value = "/contents_modify_movie", method = RequestMethod.GET)
    public String movieModify(@RequestParam(value = "contentsNo", required = false) Integer contentsNo, Model m) {
        if (contentsNo != null) {
            // contentsNo가 null이 아닌 경우에만 실행될 코드 작성
            m.addAttribute("contents", contentsService.getContents(contentsNo));
            return "admin/contents_modify_movie";
        } else {
            // contentsNo가 null인 경우에 대한 처리
            // 예를 들어, 다른 페이지로 리다이렉트하거나 오류 메시지를 반환하는 등의 처리를 수행할 수 있습니다.
            return "admin/index";
        }
    }
    
    //작품 수정(TV)
    @RequestMapping(value = "/contents_modify_tv", method = RequestMethod.GET)
    public String tvModify(@RequestParam(value = "contentsNo", required = false) Integer contentsNo, Model m) {
    	if (contentsNo != null) {
    		// contentsNo가 null이 아닌 경우에만 실행될 코드 작성
    		m.addAttribute("contents", contentsService.getContents(contentsNo));
    		return "admin/contents_modify_tv";
    	} else {
    		// contentsNo가 null인 경우에 대한 처리
    		// 예를 들어, 다른 페이지로 리다이렉트하거나 오류 메시지를 반환하는 등의 처리를 수행할 수 있습니다.
    		return "admin/index";
    	}
    }


    
    // 작품 추가(영화)
    @RequestMapping(value = "/contents_add_movie", method = RequestMethod.POST)
    public String addMovie(@ModelAttribute Contents contents, @RequestParam MultipartFile file1, @RequestParam MultipartFile file2
    		, @RequestParam MultipartFile file3, @RequestParam MultipartFile file4,  Model m ) throws IllegalStateException, IOException {
    	String uploadDirectory=context.getServletContext().getRealPath("/resources/images/movie");
    	
   		if(!file1.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file1.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file1.transferTo(file);
   			contents.setContentsPoster(contentsName);
   		}
   		
   		if(!file2.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file2.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file2.transferTo(file);
   			contents.setContentsPhoto1(contentsName);
   		}
   		
   		if(!file3.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file3.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file3.transferTo(file);
   			contents.setContentsPhoto2(contentsName);
   		}
   		
   		if(!file4.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file4.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file4.transferTo(file);
   			contents.setContentsPhoto3(contentsName);
  		}
        
   		contentsService.addContents(contents);
    	
    	return "redirect:/admin/contents_movie";
	}
    
    // 작품 추가(TV)
    @RequestMapping(value = "/contents_add_tv", method = RequestMethod.POST)
    public String addTV(@ModelAttribute Contents contents, @RequestParam MultipartFile file1, @RequestParam MultipartFile file2
    		, @RequestParam MultipartFile file3, @RequestParam MultipartFile file4,  Model m ) throws IllegalStateException, IOException {
    	String uploadDirectory=context.getServletContext().getRealPath("/resources/images/tv");
    	
   		if(!file1.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file1.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file1.transferTo(file);
   			contents.setContentsPoster(contentsName);
   		}
   		
   		if(!file2.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file2.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file2.transferTo(file);
   			contents.setContentsPhoto1(contentsName);
   		}
   		
   		if(!file3.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file3.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file3.transferTo(file);
   			contents.setContentsPhoto2(contentsName);
   		}
   		
   		if(!file4.isEmpty()) {
   			String contentsName=UUID.randomUUID().toString()+"_"+file4.getOriginalFilename();
   			File file=new File(uploadDirectory, contentsName);
   			file4.transferTo(file);
   			contents.setContentsPhoto3(contentsName);
  		}
        
   		contentsService.addContents(contents);
    	
    	return "redirect:/admin/contents_tv";
	}
    
 // 작품 수정 (영화)
    @RequestMapping(value = "/contents_modify_movie/{contentsNo}", method = RequestMethod.POST)
    public String modifyMovie(@ModelAttribute Contents updatedContents, @PathVariable("contentsNo") Integer contentsNo,
                              Model m, RedirectAttributes redirectAttributes) {
        try {
            Contents existingContents = contentsService.getContents(contentsNo);
            if (existingContents == null) {
                redirectAttributes.addFlashAttribute("errorMessage", "수정할 작품을 찾을 수 없습니다.");
                return "redirect:/admin/contents_movie";
            }

            updateContents(existingContents, updatedContents);

            contentsService.modifyContents(existingContents);
            redirectAttributes.addFlashAttribute("successMessage", "작품이 성공적으로 수정되었습니다.");
            return "redirect:/admin/contents_movie";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "작품 수정 중 오류가 발생했습니다: " + e.getMessage());
            return "redirect:/admin/contents_movie";
        }
    }

 // 작품 수정 (TV)
    @RequestMapping(value = "/contents_modify_tv", method = RequestMethod.POST)
    public String modifyTV(@ModelAttribute Contents updatedContents,
                           Model m, RedirectAttributes redirectAttributes) {
        try {
            Contents existingContents = contentsService.getContents(updatedContents.getContentsNo());
            if (existingContents == null) {
                redirectAttributes.addFlashAttribute("errorMessage", "수정할 TV 컨텐츠를 찾을 수 없습니다.");
                return "redirect:/admin/contents_tv";
            }

            updateContents(existingContents, updatedContents);

            contentsService.modifyContents(existingContents);
            redirectAttributes.addFlashAttribute("successMessage", "TV 컨텐츠가 성공적으로 수정되었습니다.");
            return "redirect:/admin/contents_tv";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "TV 컨텐츠 수정 중 오류가 발생했습니다: " + e.getMessage());
            return "redirect:/admin/contents_tv";
        }
    }

    private void updateContents(Contents existingContents, Contents updatedContents) {
        existingContents.setContentsType(updatedContents.getContentsType());
        existingContents.setContentsOname(updatedContents.getContentsOname());
        existingContents.setContentsTname(updatedContents.getContentsTname());
        existingContents.setContentsTrailer(updatedContents.getContentsTrailer());
        existingContents.setContentsStaff(updatedContents.getContentsStaff());
        existingContents.setContentsOverview(updatedContents.getContentsOverview());
        existingContents.setContentsRating(updatedContents.getContentsRating());
        existingContents.setContentsGenre(updatedContents.getContentsGenre());
        existingContents.setContentsNetwork(updatedContents.getContentsNetwork());
        existingContents.setContentsCountries(updatedContents.getContentsCountries());
        existingContents.setContentsDirector(updatedContents.getContentsDirector());
        existingContents.setContentsStartdate(updatedContents.getContentsStartdate());
        existingContents.setContentsEnddate(updatedContents.getContentsEnddate());
        existingContents.setContentsEpisodes(updatedContents.getContentsEpisodes());
        existingContents.setContentsSeasons(updatedContents.getContentsSeasons());
        existingContents.setContentsRuntime(updatedContents.getContentsRuntime());
        existingContents.setContentsTagline(updatedContents.getContentsTagline());
    }  

    // 작품 삭제(영화)
    @RequestMapping(value = "/contents_remove_movie")
    public String contentsRemove(@RequestParam(value = "contentsNo") Integer contentsNo) {
        // contentsNo에 해당하는 작품을 삭제하는 로직을 추가합니다.
        contentsService.removeContents(contentsNo);
        return "redirect:/admin/contents_movie";
    }
    // 작품 삭제(TV)
    @RequestMapping(value = "/contents_remove_tv")
    public String contentsRemoveTV(@RequestParam(value = "contentsNo") Integer contentsNo) {
    	// contentsNo에 해당하는 작품을 삭제하는 로직을 추가합니다.
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
    // 회원 상태 변경
    @RequestMapping(value = "/updateMemberStatus", method = RequestMethod.POST)
    public String updateMemberStatus(@RequestParam("memberNo") int memberNo, @RequestParam("memberStatus") int memberStatus, RedirectAttributes redirectAttributes) {
        memberService.modifyMemberStatus(memberNo, memberStatus); // 회원 상태 업데이트
        redirectAttributes.addFlashAttribute("successMessage", "회원 상태가 업데이트되었습니다.");
        return "redirect:/admin/member";
    }
	 //공지사항
	 @RequestMapping("/noticeList")
	    public String noticeList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "admin/notice_view";
	 }
	 
	 //공지사항 상세 
	 @RequestMapping(value = "/noticeView", method=RequestMethod.GET)
	 public String noticeDetail(@RequestParam int noticeNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", noticeService.getNotice(noticeNo));
		 
		 return "admin/notice";
	 }
	 
	 //이벤트
	 @RequestMapping("/eventList")
	    public String eventList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "admin/event";
	 }
	 
	 //이벤트 상세 
	 @RequestMapping(value = "/eventView", method=RequestMethod.GET)
	 public String eventDetail(@RequestParam int noticeNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", noticeService.getNotice(noticeNo));
		 
		 return "admin/eventView";
	 }
	 
	 //문의사항
	 @RequestMapping("/moonList")
	    public String moonList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = moonService.getMoonList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("moonList", map.get("moonList"));

	        return "admin/moon_view";
	 }
	 
	 //이벤트 상세 
	 @RequestMapping(value = "/moonView", method=RequestMethod.GET)
	 public String moonDetail(@RequestParam int moonNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", moonService.getMoon(moonNo));
		 
		 return "admin/inquiry";
	 } 
}
    /*

    
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
