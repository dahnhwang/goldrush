package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Forecast_Factors_d;
import model.Forecast_Factors_m;
import model.Influence;
import service.IForecastOthersService;
import service.IForecast_Factors_dService;
import service.IForecast_Factors_mService;
import service.IInfluenceService;

@Controller
public class ForecastController {
	
	@Autowired
	private IInfluenceService iService;
	
	@Autowired
	private IForecast_Factors_dService fdService;
	
	@Autowired
	private IForecast_Factors_mService fmService;
	
	@Autowired
	private IForecastOthersService foService;
	
	@RequestMapping("aboutForecast.do")
	public ModelAndView forecast() {
		ModelAndView mav = new ModelAndView();
	
		List<Forecast_Factors_d> forecast_d = fdService.selectByLatestDate();
		List<Forecast_Factors_m> forecast_m = fmService.selectByLatestDate();
		int size_d =forecast_d.size();
		int size_m =forecast_m.size();
		
		mav.addObject("forecast_d", forecast_d);
		mav.addObject("forecast_m", forecast_m);
		mav.addObject("size_d", size_d);
		mav.addObject("size_m", size_m);
		return mav;
	}
	
	@RequestMapping(value = "influence_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getInfluenc_ajax_json() {
		
		Map<String, Object> data = new HashMap<>();
		Influence real = iService.influenceReal();
		Influence relative = iService.influenceRelative();
		
		data.put("real", real);
		data.put("relative", relative);
		
		return data;
	}
	
	@RequestMapping(value = "forecast_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getForecast_ajax_json() {
		
		Map<String, Object> data = new HashMap<>();
		List<Forecast_Factors_d> forecast_d = fdService.selectByLatestDate();
		List<Forecast_Factors_m> forecast_m = fmService.selectByLatestDate();
		int size_d =forecast_d.size();
		int size_m =forecast_m.size();
		
		double exrate = foService.exrate();
		
		data.put("forecast_d", forecast_d);
		data.put("forecast_m", forecast_m);
		data.put("size_d", size_d);
		data.put("size_m", size_m);
		data.put("exrate", exrate);
		
		return data;
	}

}
