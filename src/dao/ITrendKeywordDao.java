package dao;

import java.util.HashMap;
import java.util.List;

import model.TrendKeyword;

public interface ITrendKeywordDao {

	// default로 최근 12개월간 데이터를 가져옴
	public List<TrendKeyword> selectRecentTrendKeyword(HashMap<String, Object> params);

	// 조회하고자 하는 년을 입력받아 해당 기간의 키워드셋을 모두 가져옴
	public List<TrendKeyword> selectTrendKeywordByYear(HashMap<String, Object> params);

}
