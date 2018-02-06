package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.ITrendKeywordService;

@Controller
public class TrendKeywordController {

	@Autowired
	public ITrendKeywordService trendService;

	// 트렌드 페이지에 접속할 때 처음 12개월 정보를 가져온다.
	// @RequestMapping("trend.do")
	// public @ResponseBody Map<String, Object> trend(Model model,
	// @RequestParam(defaultValue = "1", value = "page") int page) {
	// HashMap<String, Object> trendMap = trendService.getBoardList(page, mode,
	// keyword);
	// return boardMap;
	// return mav;
	// }

	// select 바를 선택할 경우 선택된 12개월 정보를 가져온다.

}
