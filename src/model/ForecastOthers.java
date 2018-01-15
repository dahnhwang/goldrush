package model;

import java.util.Date;

public class ForecastOthers {

	private int f_others_id;
	private Date f_others_date;
	private int f_others_site;
	private String f_others_period;
	private Double f_others_max;
	private Double f_others_min;
	private Double f_others_price;
	private Double f_others_error;
	public int getF_others_id() {
		return f_others_id;
	}
	public void setF_others_id(int f_others_id) {
		this.f_others_id = f_others_id;
	}
	public Date getF_others_date() {
		return f_others_date;
	}
	public void setF_others_date(Date f_others_date) {
		this.f_others_date = f_others_date;
	}
	public int getF_others_site() {
		return f_others_site;
	}
	public void setF_others_site(int f_others_site) {
		this.f_others_site = f_others_site;
	}
	public String getF_others_period() {
		return f_others_period;
	}
	public void setF_others_period(String f_others_period) {
		this.f_others_period = f_others_period;
	}
	public Double getF_others_max() {
		return f_others_max;
	}
	public void setF_others_max(Double f_others_max) {
		this.f_others_max = f_others_max;
	}
	public Double getF_others_min() {
		return f_others_min;
	}
	public void setF_others_min(Double f_others_min) {
		this.f_others_min = f_others_min;
	}
	public Double getF_others_price() {
		return f_others_price;
	}
	public void setF_others_price(Double f_others_price) {
		this.f_others_price = f_others_price;
	}
	public Double getF_others_error() {
		return f_others_error;
	}
	public void setF_others_error(Double f_others_error) {
		this.f_others_error = f_others_error;
	}
	@Override
	public String toString() {
		return "ForecastOthers [f_others_id=" + f_others_id + ", f_others_date=" + f_others_date + ", f_others_site="
				+ f_others_site + ", f_others_period=" + f_others_period + ", f_others_max=" + f_others_max
				+ ", f_others_min=" + f_others_min + ", f_others_price=" + f_others_price + ", f_others_error="
				+ f_others_error + "]";
	}
	
	
	
	

}
