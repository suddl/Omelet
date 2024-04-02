package omlete.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Wish {
	private int wishNo; // 찜 번호
	private int wishClientNo; // 회원 번호
	private String wishContentsNo; // 작품 번호
}
