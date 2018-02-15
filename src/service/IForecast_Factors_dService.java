package service;

import java.util.List;

import model.Forecast_Factors_d;

public interface IForecast_Factors_dService {

	public List<Forecast_Factors_d> selectAll();
	public Forecast_Factors_d selectbyId(int ffd_id);
	
	
}
