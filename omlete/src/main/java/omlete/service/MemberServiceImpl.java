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
		if(memberDAO.selectMember(member.getMemberId())!=null){
			throw new ExistsMemberException("이미 사용 중인 아이디입니다.", member);
		}
		//아니라면 암호화된 비밀번호로 변경후
		member.setMemberPasswd(BCrypt.hashpw(member.getMemberPasswd(),BCrypt.gensalt()));
		//삽입처리
		memberDAO.insertMember(member);
	}
	
	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException {
		//전달받은 회원정보의 아이디가 없을 경우 예외전달
		if(memberDAO.selectMember(member.getMemberId())==null) {
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		//전달받은 회원정보의 비밀번호가 존재할 경우 암호화된 비밀번호로 필드값 변경
		if(member.getMemberPasswd()!=null && !member.getMemberPasswd().equals("")) {
			member.setMemberPasswd(BCrypt.hashpw(member.getMemberPasswd(),BCrypt.gensalt()));
		}
		//전달받은 회원정보의 이름이 존재할 경우 필드값 변경
		if(member.getMemberName()!=null && !member.getMemberName().equals("")) {
			member.setMemberName(member.getMemberName());
		}
		//전달받은 회원정보의 이메일이 존재할 경우 필드값 변경
		if(member.getMemberEmail()!=null && !member.getMemberEmail().equals("")) {
			member.setMemberEmail(member.getMemberEmail());
		}
		//전달받은 회원정보의 전화번호가 존재할 경우 필드값 변경
		if(member.getMemberPhone()!=null && !member.getMemberPhone().equals("")) {
			member.setMemberPhone(member.getMemberPhone());
		}
		//전달받은 회원정보의 상태가 0(탈퇴회원)이거나 1(일반회원)일 경우 필드값 변경 
		if(member.getMemberStatus()==0 || member.getMemberStatus()==1) {
			member.setMemberStatus(member.getMemberStatus());
		}
		//전달받은 회원정보의 인생작품 존재할 경우 필드값 변경
		if(member.getMemberFavorite1()!=null && !member.getMemberFavorite1().equals("")) {
			member.setMemberFavorite1(member.getMemberFavorite1());
		}
		//전달받은 회원정보의 인생작품 존재할 경우 필드값 변경
		if(member.getMemberFavorite2()!=null && !member.getMemberFavorite2().equals("")) {
			member.setMemberFavorite2(member.getMemberFavorite2());
		}
		//전달받은 회원정보의 인생작품 존재할 경우 필드값 변경
		if(member.getMemberFavorite3()!=null && !member.getMemberFavorite3().equals("")) {
			member.setMemberFavorite3(member.getMemberFavorite3());
		}
		//변경처리
		memberDAO.updateMember(member); 
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

	@Override
	public Member getEmailMember(String mEmail) throws MemberNotFoundException {
		//전달받은 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
		Member member=memberDAO.selectEmailMember(mEmail);
		//검색된 회원정보의 아이디가 없을 경우 예외전달
		if(member==null) {
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
}

	@Override
	public Member getMember(String memberId) throws MemberNotFoundException {
		//전달받은 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
		Member member=memberDAO.selectMember(memberId);
		//검색된 회원정보의 아이디가 없을 경우 예외전달
		if(member==null) {
			throw new MemberNotFoundException("게스트 아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
}

}
