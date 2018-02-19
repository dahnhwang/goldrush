package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.News;
import service.INewsService;

@Controller
public class NewsController {

	@Autowired
	private INewsService newsService;

	@RequestMapping("news.do")
	public ModelAndView news() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("news", newsService.getNewsList());
		mav.addObject("updateTime", newsService.getRecentUpdateTime());
		mav.setViewName("news");
		return mav;
	}

	@RequestMapping(value = "newslist.do", method = RequestMethod.GET)
	public @ResponseBody List<News> newsList(@RequestParam(defaultValue = "1", value = "eng") int eng,
			@RequestParam(defaultValue = "", required = false) String keyword) {

		List<News> list = null;
		if (eng == 1) {
			// System.out.println("영문");
			list = newsService.getNewsListSearch(eng, keyword);
		} else {
			// System.out.println("국문");
			list = newsService.getNewsListSearch(eng, keyword);
		}
		return list;
	}

	@RequestMapping(value = "infiniteScrollDown.do", method = RequestMethod.GET)
	public @ResponseBody List<News> infiniteScrollDown(
			@RequestParam(defaultValue = "", value = "news_id") int news_id) {
		news_id--;
		return newsService.infiniteScrollDown(news_id);
	}
}
