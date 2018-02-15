package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IForecast_Factors_dDao;
import model.Forecast_Factors_d;

@Service
public class Forecast_Factors_dService implements IForecast_Factors_dService {
	@Autowired
	private IForecast_Factors_dDao ffdDao;
	
	@Override
	public List<Forecast_Factors_d> selectAll() {
		// TODO Auto-generated method stub
		List<Forecast_Factors_d> selectAll=ffdDao.selectAllForecast();
		return selectAll;
	}

	@Override
	public Forecast_Factors_d selectbyId(int ffd_id) {
		// TODO Auto-generated method stub
		Forecast_Factors_d ffdById=ffdDao.selectForecast(ffd_id);
		return ffdById;
	}
	
}
