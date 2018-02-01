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
		FactorsRecent recentResult1Day = frService.factorsRecentResultSomedays(1);
		FactorsRecent recentResult5Day = frService.factorsRecentResultSomedays(5);

		ModelAndView mav = new ModelAndView();

		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceResult", goldPriceResult);
		mav.addObject("recentAll", recentAll);
		mav.addObject("result1Day", recentResult1Day);
		mav.addObject("result5Day", recentResult5Day);
		return mav;
	}

	@RequestMapping("trend.do")
	public ModelAndView trend() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	// @RequestMapping(value="/pages/news.do")
	@RequestMapping("news.do")
	public ModelAndView news() {

		ModelAndView mav = new ModelAndView();
		// mav.setViewName("news");
		// mav.setViewName("New");
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

/*
 * package controller;
 * 
 * import java.io.IOException;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * @Controller
 * 
 * @WebServlet("/MainController") public class MainController extends
 * HttpServlet{
 * 
 * @Override protected void doGet(HttpServletRequest req, HttpServletResponse
 * resp) throws ServletException, IOException { // TODO Auto-generated method
 * stub System.out.println("서브릿 들어옴"); String url = "/WEB-INF/index.jsp"; //
 * String url = "/WEB-INF/pages/News.jsp";
 * req.getRequestDispatcher(url).forward(req, resp); }
 * 
 * @Override protected void doPost(HttpServletRequest req, HttpServletResponse
 * resp) throws ServletException, IOException { // TODO Auto-generated method
 * stub req.setCharacterEncoding("UTF-8"); doGet(req, resp); }
 * 
 * @RequestMapping("News.do") public String News() {
 * 
 * return "/pages/News"; }
 * 
 * // @RequestMapping("loginForm.do") // public String loginForm() { // return
 * "loginForm.tiles"; // } }
 */