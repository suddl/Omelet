package omlete.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/join")
public class JoinController {
	
	private final MemberService memberService;
	
	@RequestMapping(value = "/member",method = RequestMethod.GET)
	public String memberJoin() {
		return "login/register";
	}
	
	//회원가입 성공
	@RequestMapping(value = "/member",method = RequestMethod.POST)
	public String memberJoin(@ModelAttribute Member member) {
		memberService.addMember(member);
		return "/login/myfavorite";

	}
	
	@RequestMapping(value = "/idCheck/{memberId}", method = RequestMethod.GET)
	@ResponseBody
	public String join(@PathVariable String memberId) {
		if(memberService.getMemberId(memberId) == null) {
			return "ok";
		}
		return "fail";
	}
	@RequestMapping(value = "/nicknameCheck", method = RequestMethod.POST)
	@ResponseBody
	public String checkNickname(@RequestParam String memberNickname) {
	    if (memberService.getMemberNickname(memberNickname) == null) {
	        return "ok";
	    }
	    return "fail";
	}
	
	@RequestMapping(value = "/updateNickname", method = RequestMethod.POST)
	@ResponseBody
	public String updateNickname(@RequestParam String newNickname) {
	    // 새로운 닉네임이 이미 사용 중인지 확인
	    if (memberService.getMemberNickname(newNickname) != null) {
	        return "fail"; // 이미 사용 중인 닉네임
	    }
	    
	    // 여기서부터는 닉네임 변경 로직을 수행
	    
	    // 변경에 성공하면 "ok" 반환
	    return "ok";
	}
	
	@RequestMapping(value = "/changeNickname", method = RequestMethod.POST)
	@ResponseBody
	public String changeNickname(@RequestParam String newNickname, HttpSession session) {
	    // 현재 로그인한 회원의 정보를 세션에서 가져옵니다.
	    Member loginMember = (Member) session.getAttribute("loginMember");
	    
	    // 새로운 닉네임이 이미 사용 중인지 확인합니다.
	    if (memberService.getMemberNickname(newNickname) != null) {
	        return "fail"; // 이미 사용 중인 닉네임이라면 실패를 반환합니다.
	    }
	    
	    // 새로운 닉네임이 사용 가능하다면 회원의 기존 닉네임을 새로운 닉네임으로 업데이트합니다.
	    loginMember.setMemberNickname(newNickname);
	    memberService.modifyMemberInfo(loginMember); // 회원 정보를 업데이트합니다.
	    
	    return "ok"; // 닉네임 변경에 성공했음을 클라이언트에게 알려줍니다.
	}
	
	//회원가입 실패
	@ExceptionHandler(value = ExistsMemberException.class)
	public String MemberExceptionHandler(ExistsMemberException exception, Model model) {
		model.addAttribute("message", exception.getMessage()); 
		model.addAttribute("member", exception.getMember());  
		return "login/register";
	}
}
