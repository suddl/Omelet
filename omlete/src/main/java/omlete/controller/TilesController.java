package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TilesController {
	@RequestMapping("/")
	public String tiles() {
		return "main";
	}
	
	@RequestMapping("/tiles1")
	public String tiles1() {
		return "tiles1";
	}
	
	@RequestMapping("/tiles2")
	public String tiles2() {
		return "layout/tiles2";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
}
