package dao;

import java.util.List;

import model.Forecast_Factors_d;

public interface IForecast_Factors_dDao {
	public Forecast_Factors_d selectForecast(int ffd_id);
	
	public List<Forecast_Factors_d> selectAllForecast();

}
