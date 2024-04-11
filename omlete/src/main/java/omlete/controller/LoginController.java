package omlete.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.exception.MemberNotFoundException;
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
	
	@RequestMapping(value = "/forgot_id_result", method = RequestMethod.GET)
	public String forgotIdResult() {
	    return "login/forgot_id_result";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "login/register";
		
	}
	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String memberLogin(@ModelAttribute Member member, HttpSession session){
		Member loginMember = memberService.loginAuth(member);
		int memberNo = loginMember.getMemberNo();
		session.setAttribute("memberNo", memberNo);
		session.setAttribute("loginMember", loginMember);
		
		// 로그인이 성공하면 메인 화면으로 이동
		return "redirect:/";
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";	
	}

	//==============================================================================================
			
	 //member 아이디, 비밀번호찾기
	
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public String find(@ModelAttribute Member member, Model model) {
	    try {
	        // 이름과 이메일로 회원 정보 조회
	        String memberId = memberService.getIdMember(member);
	        	        
	        if(memberId == null) {
	        	throw new MemberNotFoundException();
	        }
	        
	        Member foundMember=memberService.getMemberId(memberId);
	        
	        // 임시 비밀번호 생성
	        String newPasswd = generateRandomPassword(10);
	        
	        // 회원 정보 업데이트 (임시 비밀번호로)
	        foundMember.setMemberPasswd(newPasswd);
	        memberService.modifyMemberInfo(foundMember);
	        
	        // 모델에 회원 아이디, 임시 비밀번호, 회원 상태를 추가하여 JSP로 전달
	        model.addAttribute("memberId", foundMember.getMemberId());
	        model.addAttribute("memberPasswd", newPasswd);
	        model.addAttribute("memberStatus", foundMember.getMemberStatus());
	        
	        return "login/forgot_id_result"; // 아이디/비밀번호 찾기 결과 페이지로 리다이렉트
	    } catch (MemberNotFoundException e) {
	        model.addAttribute("errorMessage", e.getMessage());
	        return "login/forgot_id"; // 회원을 찾지 못한 경우 다시 아이디/비밀번호 찾기 폼으로 이동
	    }
	}
	

	    // 10자리 숫자 랜덤 비밀번호 생성 메소드
	    private String generateRandomPassword(int length) {
	        StringBuilder newPassword = new StringBuilder();
	        for (int i = 0; i < length; i++) {
	            newPassword.append((int) (Math.random() * 10));
	        }
	        return newPassword.toString();
	    }

	    @RequestMapping(value = "/forgot_id_end", method = RequestMethod.POST)
	    public String forgotIdEnd(@ModelAttribute Member member) {
	        try {
	            // 회원의 비밀번호를 변경하는 기능을 수행합니다.
	            memberService.pwModifyMember(member);
	            return "redirect:/"; // 변경 성공 시 메인 페이지로 이동
	        } catch (MemberNotFoundException e) {
	            // 회원을 찾지 못한 경우 예외 처리
	            // 적절한 에러 메시지를 전달하거나 다른 처리를 수행할 수 있습니다.
	            return "error-page"; // 예시로 에러 페이지로 이동하도록 설정
	        }
	    }
	}
