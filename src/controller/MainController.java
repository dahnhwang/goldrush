package controller;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.FactorsRecent;
import model.ForecastOthers;
import model.Price;
import model.News;
import service.IFactorsRecentService;
import service.IForecastOthersService;
import service.IPriceService;
import service.INewsService;
import service.NewsService;

@Controller
public class MainController {

	@Autowired
	private IPriceService pService;

	@Autowired
	private IFactorsRecentService frService;
	
	@Autowired
	private IForecastOthersService foService;
	
	@Autowired
	private INewsService newsService;

	@RequestMapping("index.do")
	public ModelAndView index() {

		Price goldPrice = pService.goldPrice();
		List<String> goldPriceResult = pService.goldPriceResult();

		List<FactorsRecent> recentAll = frService.factorsRecentAll();
		FactorsRecent recentResult1Day = frService.factorsRecentResultSomedays(1);
		/* FactorsRecent recentResult5Day = frService.factorsRecentResultSomedays(5); */

		ModelAndView mav = new ModelAndView();

		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceResult", goldPriceResult);
		mav.addObject("recentAll", recentAll);
		mav.addObject("result1Day", recentResult1Day);
		/* mav.addObject("result5Day", recentResult5Day); */
		return mav;
	}

	@RequestMapping(value = "index_ajax.do", produces = { "application/json" })
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
		mav.addObject("news", newsService.getNewsList());
		mav.setViewName("news");
		return mav;
	}
	
	@RequestMapping(value="newslist.do", method=RequestMethod.GET)
	public @ResponseBody List<News> newsList(@RequestParam(defaultValue = "1", value = "eng") int eng,
			@RequestParam(defaultValue = "", required = false) String keyword) {
		//System.out.println("hello from newslist.do");
		List<News> list = null;
		if (eng == 1) {
			//System.out.println("영문");
			// if request is for english news
			list = newsService.getNewsListSearch(eng, keyword);
		} else {
			//System.out.println("국문");
			// if request is for korean news
			list = newsService.getNewsListSearch(eng, keyword);
		}
		return list;
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
	
	@RequestMapping(value = "forecast_others_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getForecast_Others_ajax_json() {
		
		Date today = new Date();
		Map<String, Object> data = new HashMap<>();		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		
		GregorianCalendar cal = new GregorianCalendar();
		cal.add(cal.DATE,-1);
		Date date = cal.getTime(); //연산된 날자를 생성. 
		String yesterday = sdf.format(date);
		
		List<ForecastOthers> forecastOthersToday = foService.selectByToday();
		int sizeToday = forecastOthersToday.size();
		List<ForecastOthers> forecastOthersYesterday = foService.selectByDate(yesterday);
		int sizeYesterday = forecastOthersYesterday.size();
		double exrate = foService.exrate();
		
		data.put("forecastOthersToday", forecastOthersToday);
		data.put("sizeToday", sizeToday);
		data.put("forecastOthersYesterday", forecastOthersYesterday);
		data.put("sizeYesterday", sizeYesterday);
		data.put("exrate", exrate);

		return data;
	}
}
