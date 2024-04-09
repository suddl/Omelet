package omlete.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
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
	
	@RequestMapping(value = "/forgot", method = RequestMethod.GET)
	public String forgotId() {
		return "login/forgot_id";
		
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "login/register";
		
	}
	
	@RequestMapping(value = "/myfavorite", method = RequestMethod.POST)
	public String myfavorite() {
		return "login/myfavorite";
    }
	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String memberLogin(@ModelAttribute Member member, HttpSession session) {
		Member loginMember = memberService.loginAuth(member);
		session.setAttribute("loginMember", loginMember);
		// 로그인이 성공하면 메인 화면으로 이동
		return "/main/main_body";
	}
	
	/*
	 //member 비밀번호찾기
	 
	 @RequestMapping(value="/forgot_id",method = RequestMethod.GET ) public
	 String find() { return "member/forgot_id"; }
	 
	 //member 아이디, 비밀번호찾기(10자리 숫자 랜덤배열)
	  
	 @RequestMapping(value="/forgot_id", method = RequestMethod.POST) 
	 public String find(@ModelAttribute Member member,Model model) { 
	 try { 
	 MemberFoundMember=memberService.getEmailMember(member.getMEmail());
	 memberService.pwModifyMember(member);
	 model.addAttribute("mId",FoundMember.getMId());
	 model.addAttribute("mPw",member.getMPw());
	 model.addAttribute("mStatus",FoundMember.getMStatus()); return
	 "member/member_find_result"; } catch (MemberNotFoundException e) {
	 model.addAttribute("errorMessage", e.getMessage());
	 
	 return "member/forgot_id"; }
	 
	 //member 비밀번호찾기 후 DB솔트처리.
	 
	 @RequestMapping(value="/forgot_id_end" ) public String
	 find2(@ModelAttribute Member member) throws MemberNotFoundException {
	 
	 memberService.pwModifyMember2(member);
	  
	 return "main";
	 */
		
}
