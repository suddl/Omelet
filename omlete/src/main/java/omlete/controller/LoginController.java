package omlete.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.exception.LoginAuthFailException;
import omlete.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/login")
public class LoginController {

	private final MemberService memberService;


	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String memberLogin() {
		return "login/login";
		
	}
	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String memberLogin(@ModelAttribute Member member, HttpSession session) throws LoginAuthFailException {
		Member loginMember = memberService.loginAuth(member);
		session.setAttribute("loginMember", loginMember);
		// 로그인이 성공하면 메인 화면으로 이동
		return "/main/main_body";
	}
	
}
