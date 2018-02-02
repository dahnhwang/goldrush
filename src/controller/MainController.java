package controller;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		System.out.println(recentAll);
		FactorsRecent recentResult1Day = frService.factorsRecentResultSomedays(1);
		/*FactorsRecent recentResult5Day = frService.factorsRecentResultSomedays(5);*/
		System.out.println("이거"+recentResult1Day);

		ModelAndView mav = new ModelAndView();

		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceResult", goldPriceResult);
		mav.addObject("recentAll", recentAll);
		mav.addObject("result1Day", recentResult1Day);
		/*mav.addObject("result5Day", recentResult5Day);*/
		return mav;
	}

	@RequestMapping("trend.do")
	public ModelAndView trend() {
		ModelAndView mav = new ModelAndView();
		return mav;
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