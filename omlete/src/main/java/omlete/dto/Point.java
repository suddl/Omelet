package omlete.dto;

import lombok.Builder;
import lombok.Data;

@Data
public class Point {
	private int pointStatus; // 포인트 증감 상태
	private String pointDate; // 포인트 증감 날짜
	private int pointExtent; // 포인트 수(몇 포인트)
	private int pointMember; // 포인트 회원
	private String pointContent; // 포인트 사용 내역
}
