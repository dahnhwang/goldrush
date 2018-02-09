package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IFactorsMonthDao;
import dao.ITrendKeywordDao;
import model.FactorsMonth;
import model.TrendKeyword;

@Service
public class TrendKeywordService implements ITrendKeywordService {

	@Autowired
	private ITrendKeywordDao keywordDao;

	@Autowired
	private IFactorsMonthDao factorMonthDao;

	@Override
	// 얘는 default로 12개월간 데이터를 일단 땡겨오는 애
	public HashMap<String, Object> getRecentTrendKeywordList(String endMonth) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("endMonth", endMonth);
		List<TrendKeyword> keywordList = keywordDao.selectRecentTrendKeyword(params);
		int keywordFreqMax = keywordDao.selectMaxTrendKeywordValue(params);
		List<FactorsMonth> goldPriceList = factorMonthDao.selectRecentGoldPrice();
		HashMap<String, Object> results = new HashMap<>();
		results.put("goldPriceList", goldPriceList);
		results.put("keywordList", keywordList);
		results.put("keywordFreqMax", keywordFreqMax);
		return results;
	}

	@Override
	// 얘는 사용자가 기간 선택 시 해당 기간(년)의 데이터를 땡겨오는 애
	public HashMap<String, Object> getTrendKeywordList(String k_year) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("k_year", k_year);
		System.out.println("service가 받은 k_year" + k_year);
		List<TrendKeyword> keywordList = keywordDao.selectTrendKeywordByYear(params);
		int keywordFreqMax = keywordDao.selectMaxTrendKeywordValue(params);
		List<FactorsMonth> goldPriceList = factorMonthDao.selectGoldPriceByYear(params);
		HashMap<String, Object> results = new HashMap<>();
		results.put("goldPriceList", goldPriceList);
		results.put("keywordList", keywordList);
		results.put("keywordFreqMax", keywordFreqMax);
		return results;
	}

}
