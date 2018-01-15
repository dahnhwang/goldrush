package model;

import java.util.Date;

public class Price {
	
	private int g_id;
	private double gold_price;
	private Date gold_date;
	private Double ex_rate;
	
	
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public double getGold_price() {
		return gold_price;
	}
	public void setGold_price(double gold_price) {
		this.gold_price = gold_price;
	}
	public Date getGold_date() {
		return gold_date;
	}
	public void setGold_date(Date gold_date) {
		this.gold_date = gold_date;
	}
	public Double getEx_rate() {
		return ex_rate;
	}
	public void setEx_rate(Double ex_rate) {
		this.ex_rate = ex_rate;
	}
	@Override
	public String toString() {
		return "Price [g_id=" + g_id + ", gold_price=" + gold_price + ", gold_date=" + gold_date + ", ex_rate="
				+ ex_rate + "]";
	}
	
	

}
