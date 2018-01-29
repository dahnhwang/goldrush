package dao;

import java.util.List;

import model.Forecast;

public interface IForecastDao {
	public int insertForecast(Forecast forecast);
	
	public int deleteForecast(int f_id);
	
	public Forecast selectForecast(int f_id);
	
	public List<Forecast> selectAllForecast();

	public int updateForecast(int f_id);
	
}
