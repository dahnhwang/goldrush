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

import model.FactorsDaily;
import model.FactorsMonth;
import model.FactorsRecent;
import model.Forecast;
import model.ForecastOthers;
import model.Price;
import model.News;
import service.IFactorsRecentService;
import service.IForecastOthersService;
import service.IForecastService;
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
	private IForecastService fService;
	

	@RequestMapping("index.do")
	public ModelAndView index() {

		Price goldPrice = pService.goldPrice();
		List<String> goldPriceResult = pService.goldPriceResult();

		List<FactorsRecent> recentAll = frService.factorsRecentAll();

		ModelAndView mav = new ModelAndView();

		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceResult", goldPriceResult);
		mav.addObject("recentAll", recentAll);
		return mav;
	}

	@RequestMapping(value = "index_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getFactors_ajax_json() {
		
		Map<String, Object> data = new HashMap<>();
		
		List<FactorsRecent> recentAll = frService.factorsRecentAll();
		List<FactorsDaily> byDaily=frService.selectRecentDailyGoldPrice();
		List<FactorsMonth> byMonth =frService.selectGoldPriceDailyByMonth();
		List<FactorsMonth> byYear = frService.selectRecentPriceforYear();
		double exrate = foService.exrate();
		
		int size = frService.factorsRecentAll().size();
		int sizeByDaily =byDaily.size();
		int sizeByMonth  = byMonth.size();
		int sizeByYear  = byYear.size();
		
		data.put("recentAll", recentAll);
		data.put("size", size);
		data.put("byDaily", byDaily);
		data.put("byMonth", byMonth);
		data.put("byYear", byYear);
		data.put("sizeByDaily", sizeByDaily);
		data.put("sizeByMonth", sizeByMonth);
		data.put("sizeByYear", sizeByYear);
		data.put("exrate", exrate);
		
		return data;
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
		
		List<ForecastOthers> forecastOthersToday = foService.selectByToday();
		int sizeToday = forecastOthersToday.size();
		double exrate = foService.exrate();
		
		List<FactorsDaily> byDaily=frService.selectRecentDailyGoldPrice();
		List<FactorsMonth> byMonth =frService.selectGoldPriceDailyByMonth();
		List<Forecast> forecast = fService.selectAll();
		int sizeByDaily =byDaily.size();
		int sizeByMonth  = byMonth.size();
		int sizeForecast = forecast.size();

		Map<String, Object> data = new HashMap<>();	
		
		data.put("forecastOthersToday", forecastOthersToday);
		data.put("sizeToday", sizeToday);
		data.put("sizeByDaily", sizeByDaily);
		data.put("sizeByMonth", sizeByMonth);
		data.put("sizeForecast", sizeForecast);
		
		data.put("byDaily", byDaily);
		data.put("byMonth", byMonth);
		data.put("forecast", forecast);
		data.put("exrate", exrate);

		return data;
	}
}
