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
	public void addPoint(Point point) {
		pointDAO.insertPoint(point);
	}

}
