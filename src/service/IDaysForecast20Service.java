package service;

import java.util.List;

import model.DaysForecast20;

public interface IDaysForecast20Service {

	public List<DaysForecast20> selectAll();
	public DaysForecast20 selectbyId(int ffd_id);
	public List<DaysForecast20> selectByLatestDate();
	
	
}
