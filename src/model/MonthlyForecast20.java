package model;

import java.util.Date;

public class MonthlyForecast20 {
	
	private int f_id;
	private double forecast_price;
	private double forecast_max;
	private double forecast_min;
	Date f_date;
	String forecastM_date;
	
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
	public String getForecastM_date() {
		return forecastM_date;
	}
	public void setForecastM_date(String forecastM_date) {
		this.forecastM_date = forecastM_date;
	}
	
	@Override
	public String toString() {
		return "MonthlyForecast20 [f_id=" + f_id + ", forecast_price=" + forecast_price + ", forecast_max="
				+ forecast_max + ", forecast_min=" + forecast_min + ", f_date=" + f_date + ", forecastM_date="
				+ forecastM_date + "]";
	}

}
