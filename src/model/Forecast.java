package model;

import java.util.Date;


public class Forecast {
	
	private int f_id;
	private Date f_date;
	private int f_period;
	private Double f_max;
	private Double f_min;
	private Double f_goldprice;
	private Double f_error;
	
	
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public Date getF_date() {
		return f_date;
	}
	public void setF_date(Date f_date) {
		this.f_date = f_date;
	}
	public int getF_period() {
		return f_period;
	}
	public void setF_period(int f_period) {
		this.f_period = f_period;
	}
	public Double getF_max() {
		return f_max;
	}
	public void setF_max(Double f_max) {
		this.f_max = f_max;
	}
	public Double getF_min() {
		return f_min;
	}
	public void setF_min(Double f_min) {
		this.f_min = f_min;
	}
	public Double getF_goldprice() {
		return f_goldprice;
	}
	public void setF_goldprice(Double f_goldprice) {
		this.f_goldprice = f_goldprice;
	}
	public Double getF_error() {
		return f_error;
	}
	public void setF_error(Double f_error) {
		this.f_error = f_error;
	}
	@Override
	public String toString() {
		return "Forecast [f_id=" + f_id + ", f_date=" + f_date + ", f_period=" + f_period + ", f_max=" + f_max
				+ ", f_min=" + f_min + ", f_goldprice=" + f_goldprice + ", f_error=" + f_error + "]";
	}
	
	
	

}
