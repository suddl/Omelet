package omlete.util;

import javax.servlet.http.HttpSession;

import omlete.dto.Member;
import omlete.exception.BadRequestException;

public class SessionUtils {

	public static Member getMemberFromSession(HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");

		if (loginMember == null) {

			throw new BadRequestException("로그인이 필요한 기능입니다.");
		}

		return loginMember;
	}
}