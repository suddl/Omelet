package omlete.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.MemberDAO;
import omlete.dto.Member;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	private final MemberDAO memberDAO;
	
	@Override
	public void addMember(Member member) {
		memberDAO.insertMember(member);
	}

}
