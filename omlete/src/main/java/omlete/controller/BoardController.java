package omlete.controller;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.dto.Moon;
import omlete.dto.Notice;
import omlete.dto.Point;
import omlete.service.EventUserService;
import omlete.service.MemberService;
import omlete.service.MoonService;
import omlete.service.NoticeService;
import omlete.service.PointService;


@Controller
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
	@Autowired
    private final NoticeService noticeService;
	@Autowired
	private final MoonService moonService;
	private final PointService pointService;
	private final EventUserService eventUserService;
	private final MemberService memberService;
	
	 //공지사항
	 @RequestMapping("/noticeList")
	    public String noticeList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "notice/notice_view";
	 }
	 @RequestMapping(value = "/noticeView", method=RequestMethod.GET)
	 public String noticeDetail(@RequestParam int noticeNo, Model model, HttpSession session) {
	     // 공지사항 조회
	     Notice notice = noticeService.getNotice(noticeNo);
	     
	     // 공지사항이 존재하는 경우에만 처리
	     if (notice != null) {
	         // 뷰에 전달할 데이터
	         model.addAttribute("data", notice);
	         
	         try {
	             // 공지사항 조회수 증가
	             noticeService.increaseViewcnt(noticeNo, session);
	         } catch (Exception e) {
	             // 예외 발생 시 로깅하고 무시
	             e.printStackTrace();
	         }
	         
	         return "notice/notice";
	     } else {
	         // 공지사항이 존재하지 않는 경우 에러 페이지로 이동하도록 처리
	         return "errorPage"; // 존재하지 않는 공지사항 에러 페이지의 경로를 적절히 수정해주세요
	     }
	 }
	 
	//이벤트
		 @RequestMapping("/eventList")
		    public String eventList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		        Map<String, Object> map = noticeService.getNoticeList2(pageNum);

		        model.addAttribute("pager", map.get("pager"));
		        model.addAttribute("noticeList2", map.get("noticeList2"));

		        return "notice/event_view";
		 }
	 
	 //이벤트 상세 
	 @RequestMapping(value = "/eventView", method=RequestMethod.GET)
	 public String eventDetail(@RequestParam int noticeNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", noticeService.getNotice(noticeNo));
		 
		 return "notice/event";
	 }
	 
	@RequestMapping(value = "/applyEvent", method = RequestMethod.POST)
	public String applyEvent(@RequestParam int noticeNo, @ModelAttribute Point point, HttpSession session, Model model) {
	    // 포인트 차감 로직 추가
	    Member loginMember = (Member) session.getAttribute("loginMember");
	    if (loginMember != null) {
	    	point.setPointMember(loginMember.getMemberNo());
	    	
	        int modifiedPoint = pointService.addPoint(point);
	        int memberTotalPoint=modifiedPoint+loginMember.getMemberPoint();
	        memberService.modifyMemberPoint(loginMember.getMemberNo(), memberTotalPoint);
	        session.setAttribute("loginMember", memberService.getMemberNo(loginMember.getMemberNo())); 
	        
	        model.addAttribute("loginMember", loginMember);
	    }
	    eventUserService.addEventUser(noticeNo, loginMember.getMemberNo());
	    return "redirect:/board/eventView?noticeNo=" + noticeNo;
	}
	 
	 //문의사항
	 @RequestMapping("/moonList")
	    public String moonList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = moonService.getMoonList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("moonList", map.get("moonList"));

	        return "moon/moon_view";
	 }
	 
	//문의 상세 
	@RequestMapping(value = "/moonView", method=RequestMethod.GET)
	public String moonDetail(@RequestParam int moonNo, Model model) {
		 // 뷰에 전달할 데이터
		model.addAttribute("data", moonService.getMoon(moonNo));
	 
	return "moon/answer";
	}
	 
	@RequestMapping(value = "/moonWrite",method = RequestMethod.GET)
	public String moonWrite(HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		if (loginMember != null) {	
			 return "moon/inquiry";
		}   
		    return "redirect:/login/member";
	}
	
	 @RequestMapping(value = "/moonWrite", method = RequestMethod.POST)
		public String moonInsert(@ModelAttribute Moon moon, HttpSession session, Model model) {
		 	Member loginMember=(Member)session.getAttribute("loginMember");
		 	model.addAttribute("loginMember", loginMember);
		    moonService.addMoon(moon);
		    return "redirect:/board/moonList"; // 문의 성공후 페이지로 이동
		}
}