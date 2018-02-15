package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	@Override
	public List<Forecast_Factors_m> selectByLatestDate() {
		// TODO Auto-generated method stub
		List<Forecast_Factors_m> selectAll = ffmDao.selectAllForecast();
		int size =selectAll.size();
		Forecast_Factors_m selectLatest = ffmDao.selectForecast(size);
		Date latestDate = selectLatest.getF_date();
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd 00:00:00");

		String str = df.format(latestDate);
		
		List<Forecast_Factors_m> selectByLatest = ffmDao.selectForecastByDate(str);
		
		return selectByLatest;
	}

}
