package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MainController {
	@RequestMapping("/")
	public String main() {
		return "main/main_body";
	}
	
	@RequestMapping("/main_series")
	public String mainSerise() {
		return "main/main_series";
	}
}
