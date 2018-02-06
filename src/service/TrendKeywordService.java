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
	public HashMap<String, Object> getTrendKeywordList(String k_year) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("k_year", k_year);
		List<TrendKeyword> keywordList = keywordDao.selectTrendKeywordByYear(params);

		HashMap<String, Object> results = new HashMap<>();
		results.put("keywordList", keywordList);
		return results;
	}

}
