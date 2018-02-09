package dao;

import java.util.HashMap;
import java.util.List;

import model.FactorsDaily;

public interface IFactorsDailyDao {

	public List<FactorsDaily> selectRecentDailyGoldPrice(HashMap<String, Object> params);

	public FactorsDaily selectGoldPriceDailyByMonth(int fd_id);
	
	public List<FactorsDaily> selectAll();

}
