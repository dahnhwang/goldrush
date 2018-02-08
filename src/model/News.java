package model;

import java.util.Date;

public class News {

	private int news_id;
	private String news_url;
	private String news_title;
	private String news_content;
	private Date news_date;
	private String news_img;
	private int eng;
	
	
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	public String getNews_url() {
		return news_url;
	}
	public void setNews_url(String news_url) {
		this.news_url = news_url;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public Date getNews_date() {
		return news_date;
	}
	public void setNews_date(Date news_date) {
		this.news_date = news_date;
	}
	
	public String getNews_img() {
		return news_img;
	}
	public void setNews_img(String news_img) {
		this.news_img = news_img;
	}
	
	@Override
	public String toString() {
		return "News [news_id=" + news_id + ", news_url=" + news_url + ", news_title=" + news_title + ", news_content="
				+ news_content + ", news_date=" + news_date + ", news_img=" + news_img + ", eng=" + eng + "]";
	}
	
	
	
	
	
	
}
