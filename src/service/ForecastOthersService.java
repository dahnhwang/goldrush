package service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IForecastOthersDao;
import model.ForecastOthers;

@Service
public class ForecastOthersService implements IForecastOthersService {

	@Autowired
	private IForecastOthersDao foDao;

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

}
