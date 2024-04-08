package omlete.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.MemberDAO;
import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.exception.LoginAuthFailException;
import omlete.exception.MemberNotFoundException;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	private final MemberDAO memberDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addMember(Member member) throws ExistsMemberException {
		//전달받은 회원정보의 아이디가 이미 있을 경우 예외전달
		if(memberDAO.selectMember(member.getMemberId()) == null){
			throw new ExistsMemberException("이미 사용 중인 아이디입니다.", member);
		}
		//아니라면 암호화된 비밀번호로 변경후
		member.setMemberPasswd(BCrypt.hashpw(member.getMemberPasswd(),BCrypt.gensalt()));
		//삽입처리
		memberDAO.insertMember(member);
	}
	
	@Override
	public Member getMemberId(Member member) throws MemberNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Member loginAuth(Member member) throws LoginAuthFailException {
		//전달받은 회원정보의 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
		//Member loginMember=memberDAO.selectMember(member.getMemberId());
		Member loginMember=memberDAO.selectMember(member.getMemberId());
		
		//검색된 회원정보가 없는 경우 - 아이디 인증 실패
		if(loginMember==null || loginMember.getMemberId().equals("")) {
			throw new LoginAuthFailException("회원정보가 존재하지 않습니다.", member.getMemberId());
		}
		//전달받은 비밀번호와 검색된 회원정보의 비밀번호를 비교하여 같지 않은 경우 - 비밀번호 인증 실패
		if(!BCrypt.checkpw(member.getMemberPasswd(), loginMember.getMemberPasswd())) {
			throw new LoginAuthFailException("비밀번호가 맞지 않습니다.", member.getMemberId());
		}
		return loginMember;
	}

	
	//===========================================================================================
	// 마이페이지
	@Override
	public Member getMemberNo(int memberNo) {
		Member member = memberDAO.selectMemberNo(memberNo);
		if(member == null) {
			throw new MemberNotFoundException("해당 번호의 회원이 존재하지 않습니다.");
		}
		
		return member;
	}

	// 회원 정보 수정
	@Override
	public void modifyMemberInfo(Member member) {
		if(memberDAO.selectMemberNo(member.getMemberNo()) == null) {
			throw new MemberNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
		}
		
		if(member.getMemberPasswd() !=null && !member.getMemberPasswd().equals("")) {
			String hashedPasword=BCrypt.hashpw(member.getMemberPasswd(),BCrypt.gensalt());
			member.setMemberPasswd(hashedPasword);
		}
		
		memberDAO.updateMemberInfo(member);
		
	}

	// 회원 탈퇴 
	@Override
	public void modifyMemberResign(int memberNo) {
		if(memberDAO.selectMemberNo(memberNo) == null) {
			throw new MemberNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
		}
		
		memberDAO.updateMemberResign(memberNo);
		
	}
	
	// 회원 인생작 수정
	@Override
	public void modifyMemberContents(Member member) {
		if(memberDAO.selectMemberNo(member.getMemberNo()) == null) {
			throw new MemberNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
		}
		
		memberDAO.updateMemberContents(member);
		
	}

	

}
