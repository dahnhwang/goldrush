package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IForecastDao;
import model.Forecast;

@Service
public class ForecastService implements IForecastService {
	
	@Autowired
	private IForecastDao fDao;

	@Override
	public List<Forecast> selectAll() {
		// TODO Auto-generated method stub
		
		List<Forecast> selectAll = fDao.selectAllForecast();
		return selectAll;
	}

}
