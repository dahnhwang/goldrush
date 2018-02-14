package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Influence;
import service.IInfluenceService;

@Controller
public class ForecastController {
	
	@Autowired
	private IInfluenceService iService;
	
	@RequestMapping("aboutForecast.do")
	public ModelAndView forecast() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping(value = "influence_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getFactors_ajax_json() {
		
		Map<String, Object> data = new HashMap<>();
		Influence real = iService.influenceReal();
		Influence relative = iService.influenceRelative();
		
		data.put("real", real);
		data.put("relative", relative);
		
		return data;
	}

}
