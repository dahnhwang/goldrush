package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.INewsDao;
import model.News;

@Service
public class NewsService implements INewsService {

	@Autowired
	private INewsDao newsDao;
	
	@Override
	public News getNews(int news_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList() {
		// TODO Auto-generated method stub
		return newsDao.selectAllNews();
	}
	
	@Override
	public List<News> getNewsListSearch(int eng, String Nkeyword) {
		// TODO Auto-generated method stub

		HashMap<String, Object> param1 = new HashMap<>();
		
		if (eng == 1) {
			param1.put("NKeyword", Nkeyword);
			param1.put("eng", eng);
		} else if (eng != 1) {
			param1.put("NKeyword", Nkeyword);
			param1.put("eng", eng);
		}


		List<News> newsList = newsDao.selectSearchList(param1);
		System.out.println(newsList);

		return newsList;
	}

	@Override
	public List<News> infiniteScrollDown(Integer newsToStart) {
		// TODO Auto-generated method stub
		List<News> newsList = newsDao.infiniteScrollDown(newsToStart);
		return newsList;
	}

}
