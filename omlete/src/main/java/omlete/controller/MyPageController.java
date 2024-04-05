package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@RequestMapping(value = "/profile")
	public String mypage() {
		return "mypage/profile";
	}
	
	
}
