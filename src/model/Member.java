package model;

import java.util.Date;

public class Member {
	
	private int m_id;
	private String email;
	private String pwd;
	private String name;
	private int purpose;
	private int age;
	private double gold_amount;
	private Date join_date;	
	
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPurpose() {
		return purpose;
	}
	public void setPurpose(int purpose) {
		this.purpose = purpose;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getGold_amount() {
		return gold_amount;
	}
	public void setGold_amount(double gold_amount) {
		this.gold_amount = gold_amount;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", email=" + email + ", pwd=" + pwd + ", name=" + name + ", purpose=" + purpose
				+ ", age=" + age + ", gold_amount=" + gold_amount + ", join_date=" + join_date + "]";
	}
	
	
	

}
