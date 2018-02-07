package service;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IForecastOthersDao;
import dao.IPriceDao;
import model.ForecastOthers;
import model.Price;

@Service
public class ForecastOthersService implements IForecastOthersService {

	@Autowired
	private IForecastOthersDao foDao;
	
	@Autowired
	private IPriceDao pDao;

	// @Override
	// public List<ForecastOthers> selectByDate(Date f_others_getdate) {
	// // TODO Auto-generated method stub
	// List<ForecastOthers> forecastOthersDate =
	// foDao.selectForecastOthersByDate(f_others_getdate);
	// return forecastOthersDate;
	//
	// }

	@Override
	public List<ForecastOthers> selectByToday() {
		// TODO Auto-generated method stub
		Date today = new Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd 00:00:00");

		String str = df.format(today);

		List<ForecastOthers> forecastOthersToday = foDao.selectForecastOthersByDate(str);
		
		return forecastOthersToday;

	}

	@Override
	public List<ForecastOthers> selectByDate(String f_others_getdate) {
		// TODO Auto-generated method stub

		List<ForecastOthers> forecastOthersYesterday = foDao.selectForecastOthersByDate(f_others_getdate);
		
		return forecastOthersYesterday;
	}
	
	@Override
	public double exrate() {
		// TODO Auto-generated method stub
		List<Price> goldPriceAll =pDao.selectAllPrice();
		int g_id = goldPriceAll.size();
		Price goldPrice = pDao.selectPrice(g_id);		
		double exRate = goldPrice.getEx_rate();	
		return exRate;
	}

}
