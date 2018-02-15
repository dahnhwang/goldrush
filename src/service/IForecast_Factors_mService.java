package service;

import java.util.List;

import model.Forecast_Factors_m;

public interface IForecast_Factors_mService {
	public List<Forecast_Factors_m> selectAll();
	public Forecast_Factors_m selectbyId(int ffm_id);
	
}
