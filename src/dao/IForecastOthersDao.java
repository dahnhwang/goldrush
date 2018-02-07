package dao;

import java.util.Date;
import java.util.List;

import model.ForecastOthers;

public interface IForecastOthersDao {
	public int insertForecastOthers(ForecastOthers forecastOthers);
	
	public int deleteForecastOthers(int f_others_id);
	
	public ForecastOthers selectForecastOthers(int f_others_id);
	
	public List<ForecastOthers> selectForecastOthersByDate(String f_others_getdate);
	
	public List<ForecastOthers> selectAllForecastOthers();

}
