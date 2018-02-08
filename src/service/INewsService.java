package service;

import java.util.List;

import model.News;

public interface INewsService {

	public News getNews(int news_id);
	
	public List<News> getNewsList();
	
	public List<News> getNewsListSearch(int eng, String Nkeyword);
	
	
	
	
}
