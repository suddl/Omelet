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
	
	/**
	 * 로그인 페이지 이동 - 권한없음 , 예외없음
	 * @return
	 */
	
	@RequestMapping(value = "/member",method = RequestMethod.GET)
	public String memberLogin() {
		return "login/login";
	}
	
	/**
	 * 로그인 처리 - 권한없음, 전달받은 아이디와 비밀번호에 대한 인증이 실패되면 예외처리, 인증 성공하면 session에 저장
	 * @param member
	 * @param session
	 * @return
	 * @throws LoginAuthFailException
	 */
	
	@RequestMapping(value = "/member",method = RequestMethod.POST)
	public String memberLogin(@ModelAttribute Member member, HttpSession session) throws LoginAuthFailException {
		Member loginMember = memberService.loginAuth(member);
		session.setAttribute("loginMember", loginMember);
		return "redirect:/";
	}
}

	
	


