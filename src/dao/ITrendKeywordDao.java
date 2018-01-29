package dao;

import model.TrendKeyword;

public interface ITrendKeywordDao {

	public int insertTrendKeyword(TrendKeyword trendKeyword);
	
	public int deleteTrendKeyword(int k_id);
	
	public TrendKeyword selectTrendKeyword(int k_id);
}
