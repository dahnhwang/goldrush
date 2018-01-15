package model;

import java.util.Date;

public class News {

	private int news_id;
	private String news_url;
	private String news_title;
	private String publisher;
	private Date news_date;
	
	
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
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getNews_date() {
		return news_date;
	}
	public void setNews_date(Date news_date) {
		this.news_date = news_date;
	}
	@Override
	public String toString() {
		return "News [news_id=" + news_id + ", news_url=" + news_url + ", news_title=" + news_title + ", publisher="
				+ publisher + ", news_date=" + news_date + "]";
	}
	
	
	
	
	
}
