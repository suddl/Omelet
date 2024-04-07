package omlete.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import omlete.dao.ContentsDAO;
import omlete.dto.Contents;
import omlete.service.ContentsService;

@Controller
@RequestMapping("/detail")
public class ContentsController {
	@Inject
	private ContentsService contentsService;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String tiles2(Model m, int no) {
		
		Contents contents = contentsService.getContents(no);
		m.addAttribute("contents", contents);
		
		return "detail/product-detail";
	}
	
	
}
