package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IDaysForecast20Dao;
import model.DaysForecast20;

@Service
public class DaysForecast20Service implements IDaysForecast20Service {
	
	@Autowired
	private IDaysForecast20Dao df20Dao;
	
	@Override
	public List<DaysForecast20> selectAll() {
		// TODO Auto-generated method stub
		List<DaysForecast20> selectAll=df20Dao.selectAllForecast();
		return selectAll;
	}

	@Override
	public DaysForecast20 selectbyId(int f_id) {
		// TODO Auto-generated method stub
		DaysForecast20 ffdById=df20Dao.selectForecast(f_id);
		return ffdById;
	}

	@Override
	public List<DaysForecast20> selectByLatestDate() {
		// TODO Auto-generated method stub
		
		List<DaysForecast20> selectAll = df20Dao.selectAllForecast();
		int size =selectAll.size();
		
		DaysForecast20 selectLatest = df20Dao.selectForecast(size);
		Date latestDate = selectLatest.getF_date();
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		String str = df.format(latestDate);
		
		List<DaysForecast20> selectByLatest = df20Dao.selectForecastByDate(str);
		
		return selectByLatest;
	}

	
}
