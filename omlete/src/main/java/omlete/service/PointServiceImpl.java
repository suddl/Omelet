package omlete.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.PointDAO;
import omlete.dto.Point;

@Service
@RequiredArgsConstructor
public class PointServiceImpl implements PointService {
	private final PointDAO pointDAO;

	@Override
	public int addPoint(Point point) {
	    int pointValue = 0;
	    if (point.getPointStatus() == 0) {
	        pointValue = -50;
	    } else if (point.getPointStatus() == 1) {
	        pointValue = 50;
	    }
	    point.setPointExtent(pointValue);
	    pointDAO.insertPoint(point);
	    return point.getPointExtent(); // 수정된 포인트 값을 반환
	}

}
