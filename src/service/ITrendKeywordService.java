package service;

import java.util.HashMap;

public interface ITrendKeywordService {

	// 최근 12개월간 월 데이터를 가져옴 (default)
	public HashMap<String, Object> getRecentTrendKeywordList();

	// 년도를 입력하면 해당 연도에 해당하는 데이터 가져옴
	public HashMap<String, Object> getTrendKeywordList(String k_year);

}
