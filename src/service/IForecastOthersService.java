package service;

import java.util.List;

import model.ForecastOthers;

public interface IForecastOthersService {
	
	public List<ForecastOthers> selectAll();
	public ForecastOthers selectbyId(int f_others_id);
	public List<ForecastOthers> selectByDate(String f_others_getdate);
	public List<ForecastOthers> selectByToday();
	public double exrate();

}
