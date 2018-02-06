package dao;

import java.util.HashMap;
import java.util.List;

import model.TrendKeyword;

public interface ITrendKeywordDao {

	// 조회하고자 하는 년도를 입력하면 해당 년도에 해당하는 월별 키워드셋을 모두 가져옴
	public List<TrendKeyword> selectTrendKeywordByYear(HashMap<String, Object> params);

}
