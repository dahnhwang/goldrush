package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IForecast_Factors_mDao;
import model.Forecast_Factors_m;

@Service
public class Forecast_Factors_mService implements IForecast_Factors_mService {
	@Autowired
	private IForecast_Factors_mDao ffmDao;

	@Override
	public List<Forecast_Factors_m> selectAll() {
		// TODO Auto-generated method stub
		List<Forecast_Factors_m> selectAll = ffmDao.selectAllForecast();
		return selectAll;
	}
	@Override
	public Forecast_Factors_m selectbyId(int ffm_id) {
		// TODO Auto-generated method stub
		Forecast_Factors_m ffmById = ffmDao.selectForecast(ffm_id);
		return ffmById;
	}

}
