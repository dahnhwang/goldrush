package controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.FactorsRecent;
import model.Price;
import service.IFactorsRecentService;
import service.IPriceService;

@Controller
public class MainController {

	@Autowired
	private IPriceService pService;

	@Autowired
	private IFactorsRecentService frService;

	@RequestMapping("index.do")
	public ModelAndView index() {

		Price goldPrice = pService.goldPrice();
		List<String> goldPriceResult = pService.goldPriceResult();

		List<FactorsRecent> recentAll = frService.factorsRecentAll();
		FactorsRecent recentResult1Day = frService.factorsRecentResultSomedays(1);
		/*FactorsRecent recentResult5Day = frService.factorsRecentResultSomedays(5);*/

		ModelAndView mav = new ModelAndView();

		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceResult", goldPriceResult);
		mav.addObject("recentAll", recentAll);
		mav.addObject("result1Day", recentResult1Day);
		/*mav.addObject("result5Day", recentResult5Day);*/
		return mav;
	}
	
	@RequestMapping(value="index_ajax.do", produces= {"application/json"})
	public @ResponseBody Map<String, Object> getFactors_ajax_json() {
		Map<String, Object> data = new HashMap<>(); 
		List<FactorsRecent> recentAll = frService.factorsRecentAll();
		int size = frService.factorsRecentAll().size();
		data.put("recentAll", recentAll);
		data.put("size", size);
		return data;
	}



	@RequestMapping("news.do")
	public ModelAndView news() {

		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@RequestMapping("forecast.do")
	public ModelAndView forecast() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@RequestMapping("history.do")
	public ModelAndView history() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}