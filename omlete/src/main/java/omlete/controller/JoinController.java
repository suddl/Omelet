package omlete.controller;


import java.util.List;

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
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.service.ContentsService;
import omlete.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/join")
public class JoinController {
	
	private final MemberService memberService;
	private final ContentsService contentsService;

	
	@RequestMapping(value = "/member",method = RequestMethod.GET)
	public String memberJoin() {
		return "login/register";
	}
	
	@RequestMapping("/success")
    public String joinSuccess() {
        return "login/welcom";
    }

	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String memberJoin(@ModelAttribute Member member) {
	    memberService.addMember(member);
	    return "redirect:/join/success"; // 회원가입 성공 후 바로 인생영화 선택 페이지로 이동
	}

	// 인생영화 선택 페이지
	@RequestMapping(value = "/myfavorite", method = RequestMethod.GET)
	public String showFavoriteForm(Model model) {
	    model.addAttribute("movieName", ""); // 초기에는 검색어가 없으므로 빈 문자열로 설정
	    return "login/myfavorite"; // 인생영화 선택 페이지로 이동
	}

	// 검색 결과를 가져와서 화면에 출력
	@RequestMapping(value = "/myfavorite")
	@ResponseBody
	public List<Contents> searchFavoriteList(@RequestParam String movieName) {
		List<Contents> searchList=contentsService.getFavoriteContents(movieName);
	    return searchList;
	}

	// 인생영화 선택 완료 후 처리
	@RequestMapping(value = "/myfavorite/input", method = RequestMethod.POST)
	public String submitFavorite(@ModelAttribute Member member, HttpSession session) {
	    memberService.modifyMemberContents(member);
	    Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember.getMemberNo()==member.getMemberNo()) {
			session.setAttribute("loginMember", memberService.getMemberNo(member.getMemberNo()));
		}
	    
	    return "redirect:/mypage/profile";
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
	
	
	//회원가입 실패
	@ExceptionHandler(value = ExistsMemberException.class)
	public String MemberExceptionHandler(ExistsMemberException exception, Model model) {
		model.addAttribute("message", exception.getMessage()); 
		model.addAttribute("member", exception.getMember());  
		return "login/register";
	}
}



