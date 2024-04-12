package omlete.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
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
	 //공지사항 상세 
	 @RequestMapping(value = "/noticeView", method=RequestMethod.GET)
	 public String noticeDetail(@RequestParam int noticeNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", noticeService.getNotice(noticeNo));
		 
		 return "notice/notice";
	 }
	 
	 //이벤트
	 @RequestMapping("/eventList")
	    public String eventList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "notice/event_view";
	 }
	 //이벤트 상세 
	 @RequestMapping(value = "/eventView", method=RequestMethod.GET)
	 public String eventDetail(@RequestParam int noticeNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", noticeService.getNotice(noticeNo));
		 
		 return "notice/event";
	 }
	 
	 //문의사항
	 @RequestMapping("/moonList")
	    public String moonList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = moonService.getMoonList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("moonList", map.get("moonList"));

	        return "moon/moon_view";
	 }
	 
	 //이벤트 상세 
	 @RequestMapping(value = "/moonView", method=RequestMethod.GET)
	 public String moonDetail(@RequestParam int moonNo, Model model) {
		 // 뷰에 전달할 데이터
		 model.addAttribute("data", moonService.getMoon(moonNo));
		 
		 return "moon/event/inquiry";
	 }
}
