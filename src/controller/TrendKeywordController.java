package controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import service.ITrendKeywordService;

@Controller
public class TrendKeywordController {

	@Autowired
	public ITrendKeywordService trendService;

	@RequestMapping("trend.do")
	// 트렌드 페이지에 접속할 때 처음 12개월 정보를 가져온다.
	public ModelAndView trend() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -13);
		String fromMonth = format.format(cal.getTime());
		HashMap<String, Object> trendMap = trendService.getRecentTrendKeywordList(fromMonth);
		
		Gson gson = new Gson();
		String listJson = gson.toJson(trendMap);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("trendMap", trendMap);
		mav.setViewName("trend");
		return mav;

	}

	@RequestMapping("trendselect.do")
	// select 바를 선택할 경우 선택된 12개월 정보를 가져온다.
	public @ResponseBody Map<String, Object> trendSelect(Model model,
			@RequestParam(defaultValue = "", value = "keyword") String k_year) {
		HashMap<String, Object> trendMap = trendService.getTrendKeywordList(k_year);
		return trendMap;
	}

}
