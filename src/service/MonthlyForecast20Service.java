package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IMonthlyForecast20Dao;
import model.MonthlyForecast20;

@Service
public class MonthlyForecast20Service implements IMonthlyForecast20Service {
	
	@Autowired
	private IMonthlyForecast20Dao mf20Dao;
	
	@Override
	public List<MonthlyForecast20> selectAll() {
		// TODO Auto-generated method stub
		List<MonthlyForecast20> selectAll=mf20Dao.selectAllForecast();
		return selectAll;
	}

	@Override
	public MonthlyForecast20 selectbyId(int f_id) {
		// TODO Auto-generated method stub
		MonthlyForecast20 ffdById=mf20Dao.selectForecast(f_id);
		return ffdById;
	}

	@Override
	public List<MonthlyForecast20> selectByLatestDate() {
		// TODO Auto-generated method stub
		
		List<MonthlyForecast20> selectAll = mf20Dao.selectAllForecast();
		int size =selectAll.size();
		
		MonthlyForecast20 selectLatest = mf20Dao.selectForecast(size);
		Date latestDate = selectLatest.getF_date();
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		String str = df.format(latestDate);
		
		List<MonthlyForecast20> selectByLatest = mf20Dao.selectForecastByDate(str);
		
		return selectByLatest;
	}

	
}
