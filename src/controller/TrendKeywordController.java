package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TrendKeywordController {

	@RequestMapping("trend.do")
	public ModelAndView trend() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
