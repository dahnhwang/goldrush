package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ITrendKeywordDao;
import model.TrendKeyword;

@Service
public class TrendKeywordService implements ITrendKeywordService {

	@Autowired
	private ITrendKeywordDao keywordDao;

	@Override
	// 얘는 default로 12개월간 데이터를 일단 땡겨오는 애
	public HashMap<String, Object> getRecentTrendKeywordList(String endMonth) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("endMonth", endMonth);
		List<TrendKeyword> keywordList = keywordDao.selectRecentTrendKeyword(params);
		HashMap<String, Object> results = new HashMap<>();
		results.put("keywordList", keywordList);
		return results;
	}

	@Override
	// 얘는 사용자가 기간 선택 시 해당 기간(년)의 데이터를 땡겨오는 애
	public HashMap<String, Object> getTrendKeywordList(String k_year) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("k_year", k_year);
		List<TrendKeyword> keywordList = keywordDao.selectTrendKeywordByYear(params);

		HashMap<String, Object> results = new HashMap<>();
		results.put("keywordList", keywordList);
		return results;
	}

}
