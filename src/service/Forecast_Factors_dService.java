package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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

	@Override
	public List<Forecast_Factors_d> selectByLatestDate() {
		// TODO Auto-generated method stub
		
		List<Forecast_Factors_d> selectAll = ffdDao.selectAllForecast();
		int size =selectAll.size();
		
		Forecast_Factors_d selectLatest = ffdDao.selectForecast(size);
		Date latestDate = selectLatest.getF_date();
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		String str = df.format(latestDate);
		
		List<Forecast_Factors_d> selectByLatest = ffdDao.selectForecastByDate(str);
		
		return selectByLatest;
	}

	
}
