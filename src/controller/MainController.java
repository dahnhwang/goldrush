package controller;

import java.text.DecimalFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Price;
import service.IPriceService;

@Controller
public class MainController {

	@Autowired
	private IPriceService pService;

	@RequestMapping("index.do")
	public ModelAndView index() {
		Price goldPrice = pService.goldPrice();
		double exRate = goldPrice.getEx_rate();
		double goldBuy = goldPrice.getGold_buy();
		double goldSell = goldPrice.getGold_sell();
		double gold24Buy = goldBuy / 28.35 * 3.75 * exRate;
		double gold24Sell = goldSell / 28.35 * 3.75 * exRate;
		double gold18Buy = goldBuy / 28.35 * 3.75 * 0.825 * exRate;
		double gold18Sell = goldSell / 28.35 * 3.75 * 0.825 * exRate;
		double gold14Buy = goldBuy / 28.35 * 3.75 * 0.6435 * exRate;
		double gold14Sell = goldSell / 28.35 * 3.75 * 0.6435 * exRate;

		DecimalFormat df = new DecimalFormat("#,##0.00");
		
		String gold24Buy1 = df.format(gold24Buy);
		String gold24Sell1 = df.format(gold24Sell);
		String gold18Buy1 = df.format(gold18Buy);
		String gold18Sell1 = df.format(gold18Sell);
		String gold14Buy1 = df.format(gold14Buy);
		String gold14Sell1 = df.format(gold14Sell);

		ModelAndView mav = new ModelAndView();
		mav.addObject("gold24Buy", gold24Buy1);
		mav.addObject("gold24Sell", gold24Sell1);
		mav.addObject("gold18Buy", gold18Buy1);
		mav.addObject("gold18Sell", gold18Sell1);
		mav.addObject("goldPrice", goldPrice);
		mav.addObject("gold14Buy", gold14Buy1);
		mav.addObject("gold14Sell", gold14Sell1);
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