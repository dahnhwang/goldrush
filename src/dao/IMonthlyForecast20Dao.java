package dao;

import java.util.List;

import model.MonthlyForecast20;


public interface IMonthlyForecast20Dao {
	
public MonthlyForecast20 selectForecast(int f_id);
	
public List<MonthlyForecast20> selectAllForecast();
	
public List<MonthlyForecast20> selectForecastByDate(String f_date);

}
