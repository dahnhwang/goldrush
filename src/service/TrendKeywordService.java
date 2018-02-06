package service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ITrendKeywordDao;

@Service
public class TrendKeywordService implements ITrendKeywordService {

	@Autowired
	private ITrendKeywordDao keywordDao;

	@Override
	public HashMap<String, Object> getTrendKeywordList(String k_year) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("period", k_year);

		return null;
	}

}
