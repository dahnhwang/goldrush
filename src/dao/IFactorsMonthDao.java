package dao;

import java.util.HashMap;
import java.util.List;

import model.FactorsMonth;

public interface IFactorsMonthDao {

	// default로 최근 12개월간 금가격 데이터를 가져옴
	public List<FactorsMonth> selectRecentGoldPrice();

	// 조회하고자 하는 년을 입력받아 해당 기간의 금가격 데이터를 모두 가져옴
	public List<FactorsMonth> selectGoldPriceByYear(HashMap<String, Object> params);

	public FactorsMonth selectRecentPriceforYear(int fm_id);
	
	public List<FactorsMonth> selectAllMonth();
}
