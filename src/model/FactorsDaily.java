package model;

import java.util.Date;

public class FactorsDaily {

	private int fd_id;
	private String k_month;
	private double gold_price;
	private double dow_jones;
	private double dollar_index;
	private double wti;
	private double interest_rate;
	private double gdp;
	private double inflation;
	private double balance_trade;
	private double cpi;
	private double gold_mine;
	private double uncertainty;
	
	public int getFd_id() {
		return fd_id;
	}
	public void setFd_id(int fd_id) {
		this.fd_id = fd_id;
	}
	public String getK_month() {
		return k_month;
	}
	public void setK_month(String k_month) {
		this.k_month = k_month;
	}
	public double getGold_price() {
		return gold_price;
	}
	public void setGold_price(double gold_price) {
		this.gold_price = gold_price;
	}
	public double getDow_jones() {
		return dow_jones;
	}
	public void setDow_jones(double dow_jones) {
		this.dow_jones = dow_jones;
	}
	public double getDollar_index() {
		return dollar_index;
	}
	public void setDollar_index(double dollar_index) {
		this.dollar_index = dollar_index;
	}
	public double getWti() {
		return wti;
	}
	public void setWti(double wti) {
		this.wti = wti;
	}
	public double getInterest_rate() {
		return interest_rate;
	}
	public void setInterest_rate(double interest_rate) {
		this.interest_rate = interest_rate;
	}
	public double getGdp() {
		return gdp;
	}
	public void setGdp(double gdp) {
		this.gdp = gdp;
	}
	public double getInflation() {
		return inflation;
	}
	public void setInflation(double inflation) {
		this.inflation = inflation;
	}
	public double getBalance_trade() {
		return balance_trade;
	}
	public void setBalance_trade(double balance_trade) {
		this.balance_trade = balance_trade;
	}
	public double getCpi() {
		return cpi;
	}
	public void setCpi(double cpi) {
		this.cpi = cpi;
	}
	public double getGold_mine() {
		return gold_mine;
	}
	public void setGold_mine(double gold_mine) {
		this.gold_mine = gold_mine;
	}
	public double getUncertainty() {
		return uncertainty;
	}
	public void setUncertainty(double uncertainty) {
		this.uncertainty = uncertainty;
	}
	
	@Override
	public String toString() {
		return "FactorsDaily [fd_id=" + fd_id + ", k_month=" + k_month + ", gold_price=" + gold_price + ", dow_jones="
				+ dow_jones + ", dollar_index=" + dollar_index + ", wti=" + wti + ", interest_rate=" + interest_rate
				+ ", gdp=" + gdp + ", inflation=" + inflation + ", balance_trade=" + balance_trade + ", cpi=" + cpi
				+ ", gold_mine=" + gold_mine + ", uncertainty=" + uncertainty + "]";
	}	

}
