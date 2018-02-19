package dao;

import java.util.List;

import model.DaysForecast20;


public interface IDaysForecast20Dao {
	
public DaysForecast20 selectForecast(int f_id);
	
public List<DaysForecast20> selectAllForecast();
	
public List<DaysForecast20> selectForecastByDate(String f_date);

}
