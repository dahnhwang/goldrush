package service;

import java.util.List;

import model.Forecast;

public interface IForecastService {
	
	List<Forecast> selectAll();

}
