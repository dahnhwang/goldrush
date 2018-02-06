package dao;

import java.util.HashMap;
import java.util.List;

import model.TrendKeyword;

public interface ITrendKeywordDao {

	// 조회하고자 하는 기간을 입력하면 해당 기간에 해당하는 월단위 키워드셋을 모두 가져옴
	// 모드 0일 경우 딱 선택한 기간만 보여줌(년단위), 모드 1일 경우 start, end 기간 모두 가져옴 
	public List<TrendKeyword> selectTrendKeywordByYear(HashMap<String, Object> params);

}
