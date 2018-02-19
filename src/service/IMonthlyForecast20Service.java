package service;

import java.util.List;

import model.MonthlyForecast20;

public interface IMonthlyForecast20Service {

	public List<MonthlyForecast20> selectAll();
	public MonthlyForecast20 selectbyId(int f_id);
	public List<MonthlyForecast20> selectByLatestDate();
	
	
}
