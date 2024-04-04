package omlete.mapper;

import omlete.dto.Badge;

public interface BadgeMapper {
	int insertBadge(Badge badge);
	Badge selectBadge();
}
