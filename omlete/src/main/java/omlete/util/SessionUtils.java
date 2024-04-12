package omlete.util;

import javax.servlet.http.HttpSession;

import omlete.dto.Member;
import omlete.exception.BadRequestException;

public class SessionUtils {

	public static Member getMemberFromSession(HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");

		return loginMember;
	}
}