package model;

public class Influence {
	
	private int i_id;
	private int r_n;
	private double dow_jones;
	private double sp_500;
	private double dollar_index;
	private double wti;
	private double interest_rate;
	private double gdp;
	private double inflation;
	private double balance_trade;
	private double cpi;
	private double gold_mine;
	private double uncertainty;
	private double money_stock;
	
	public int getI_id() {
		return i_id;
	}
	public void setI_id(int i_id) {
		this.i_id = i_id;
	}
	public int getR_n() {
		return r_n;
	}
	public void setR_n(int r_n) {
		this.r_n = r_n;
	}
	public double getDow_jones() {
		return dow_jones;
	}
	public void setDow_jones(double dow_jones) {
		this.dow_jones = dow_jones;
	}
	public double getSp_500() {
		return sp_500;
	}
	public void setSp_500(double sp_500) {
		this.sp_500 = sp_500;
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
	public double getMoney_stock() {
		return money_stock;
	}
	public void setMoney_stock(double money_stock) {
		this.money_stock = money_stock;
	}
	
	@Override
	public String toString() {
		return "Influence [i_id=" + i_id + ", r_n=" + r_n + ", dow_jones=" + dow_jones + ", sp_500=" + sp_500
				+ ", dollar_index=" + dollar_index + ", wti=" + wti + ", interest_rate=" + interest_rate + ", gdp="
				+ gdp + ", inflation=" + inflation + ", balance_trade=" + balance_trade + ", cpi=" + cpi
				+ ", gold_mine=" + gold_mine + ", uncertainty=" + uncertainty + ", money_stock=" + money_stock + "]";
	}

}
