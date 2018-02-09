package service;

import java.util.HashMap;
import java.util.List;

import model.FactorsDaily;
import model.FactorsMonth;
import model.FactorsRecent;

public interface IFactorsRecentService {
	
	public List<FactorsRecent> factorsRecentAll();
	public FactorsRecent factorsRecentResultSomedays(int somedays);
	
	public List<FactorsDaily> selectRecentDailyGoldPrice();
	public List<FactorsMonth> selectGoldPriceDailyByMonth();
	
	public List<FactorsMonth> selectRecentPriceforYear();
	

}
