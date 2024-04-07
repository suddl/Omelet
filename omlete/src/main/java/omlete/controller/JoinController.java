package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/join")
public class JoinController {
	
	private final MemberService memberService;
	
	/**
	 * 회원가입 페이지 이동
	 * @return
	 */
	@RequestMapping(value = "/member",method = RequestMethod.GET)
	public String memberJoin() {
		return "login/register";
	}
	
	/**
	 * 회원가입 처리
	 * @param member
	 * @return
	 * @throws ExistsMemberException
	 */
	//로그인 성공
	@RequestMapping(value = "/member",method = RequestMethod.POST)
	public String memberJoin(@ModelAttribute Member member) throws ExistsMemberException {
		memberService.addMember(member);
		return "redirect:/login/member";

	}
	//로그인 실패
	@ExceptionHandler(value = ExistsMemberException.class)
	public String MemberExceptionHandler(ExistsMemberException exception, Model model) {
		model.addAttribute("message", exception.getMessage()); 
		model.addAttribute("member", exception.getMember());  
		return "login/register";
	}
}
