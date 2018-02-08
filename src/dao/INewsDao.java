package dao;

import java.util.HashMap;
import java.util.List;

import model.News;

public interface INewsDao {
	public News selectNews(int news_id);
	public List<News> selectAllNews();
	// 10개 정도 카운트
	public int getNewsCount();
	
	// 검색조건을 걸었을 때 해당 검색에 관련된 전체 뉴스 수를 알아야 함
	public int getSearchListCount(HashMap<String, Object> params);
	// 전체 뉴스 보여주기 및 동시에 특정검색어로 가져온 뉴스를 보여주기도 할 것
	public List<News> selectSearchList(HashMap<String, Object> param);
}
