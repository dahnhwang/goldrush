package dao;

import java.util.List;

import model.FactorsDaily;

public interface IFactorsDailyDao {

	public List<FactorsDaily> selectRecentDailyGoldPrice(String k_month);

	public FactorsDaily selectGoldPriceDailyByMonth(int fd_id);
	
	public List<FactorsDaily> selectAll();

}
