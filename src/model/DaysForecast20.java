package model;

import java.util.Date;

public class DaysForecast20 {
	
	private int f_id;
	private double forecast_price;
	private double forecast_max;
	private double forecast_min;
	Date f_date;
	String forecastD_date;
	
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public double getForecast_price() {
		return forecast_price;
	}
	public void setForecast_price(double forecast_price) {
		this.forecast_price = forecast_price;
	}
	public double getForecast_max() {
		return forecast_max;
	}
	public void setForecast_max(double forecast_max) {
		this.forecast_max = forecast_max;
	}
	public double getForecast_min() {
		return forecast_min;
	}
	public void setForecast_min(double forecast_min) {
		this.forecast_min = forecast_min;
	}
	public Date getF_date() {
		return f_date;
	}
	public void setF_date(Date f_date) {
		this.f_date = f_date;
	}
	public String getForecastD_date() {
		return forecastD_date;
	}
	public void setForecastD_date(String forecastD_date) {
		this.forecastD_date = forecastD_date;
	}
	
	@Override
	public String toString() {
		return "DaysForecast20 [f_id=" + f_id + ", forecast_price=" + forecast_price + ", forecast_max=" + forecast_max
				+ ", forecast_min=" + forecast_min + ", f_date=" + f_date + ", forecastD_date=" + forecastD_date + "]";
	}

}
