package dao;

import java.util.List;

import model.Forecast_Factors_m;;

public interface IForecast_Factors_mDao {

	public Forecast_Factors_m selectForecast(int ffm_id);
	
	public List<Forecast_Factors_m> selectAllForecast();
	
	public List<Forecast_Factors_m> selectForecastByDate(String f_date);

}
