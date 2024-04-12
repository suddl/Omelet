package omlete.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import omlete.dto.Notice;
import omlete.service.MoonService;
import omlete.service.NoticeService;


@Controller
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
	@Autowired
    private final NoticeService noticeService;
	@Autowired
	private final MoonService moonService;
	
	 //공지사항
	 @RequestMapping("/noticeList")
	    public String noticeList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "notice/notice_view";
	 }

	 //이벤트
	 @RequestMapping("/eventList")
	    public String eventList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "notice/event_view";
	  }
	 
	 //문의사항
	 @RequestMapping("/moonList")
	    public String moonList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = moonService.getMoonList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("moonList", map.get("moonList"));

	        return "moon/moon_view";
	 }
	 
	//공지사항 상세 
	 @RequestMapping(value = "/noticeView", method=RequestMethod.GET)
	 public String noticeView(@RequestParam int noticeNo, HttpSession session) throws Exception {
	     //noticeService.increaseViewcnt(noticeNo, session);
	     
	     ModelAndView mav = new ModelAndView();
	     
	     //mav.setViewName("board/view");
	     
	     mav.addObject("notice", noticeService.getNotice(noticeNo));
	     
	     return "notice/notice";
		
	
	 }
	
	
	//이벤트상세
	@RequestMapping(value = "/event",method = RequestMethod.GET)
	public String event() {
		return "notice/event";
	}
	
	//1:1문의
	@RequestMapping(value = "/inquiry",method = RequestMethod.GET)
	public String inquiry() {
		return "moon/inquiry";
	}
	//1:1상세
	@RequestMapping(value = "/answer",method = RequestMethod.GET)
	public String answer() {
		return "moon/answer";
	}	
	

}
