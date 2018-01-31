package model;

import java.util.Date;

public class Price {
	
	private int g_id;
	private double gold_buy;
	private double gold_sell;
	private Date gold_date;
	private Double ex_rate;
	
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public double getGold_buy() {
		return gold_buy;
	}
	public void setGold_buy(double gold_buy) {
		this.gold_buy = gold_buy;
	}
	public double getGold_sell() {
		return gold_sell;
	}
	public void setGold_sell(double gold_sell) {
		this.gold_sell = gold_sell;
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
		return "Price [g_id=" + g_id + ", gold_buy=" + gold_buy + ", gold_sell=" + gold_sell + ", gold_date="
				+ gold_date + ", ex_rate=" + ex_rate + "]";
	}
	

}
