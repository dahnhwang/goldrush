package service;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IForecast_20daysDao;
import dao.IPriceDao;
import model.Forecast20Days;
import model.Price;

@Service
public class Forecast_20daysService implements IForecast_20daysService{
	@Autowired
	private IPriceDao pDao;
	
	@Autowired
	private IForecast_20daysDao f20Dao;
	
	@Override
	public List<String> goldPriceForecast(){
		List<Price> goldPriceAll =pDao.selectAllPrice();
		int g_id = goldPriceAll.size();

		Price goldPrice = pDao.selectPrice(g_id);
		int bg_id=g_id-24;

		Price bgoldPrice = pDao.selectPrice(bg_id);
		

		double goldBuy = goldPrice.getGold_buy();
		double bgoldBuy = bgoldPrice.getGold_buy();

		
		//Forecast_20days
		Forecast20Days fgoldPrice = f20Dao.selectGoldPriceForecast();
		String fDate = fgoldPrice.getForecastD_date();
		double fgoldprice = fgoldPrice.getForecast_price();
		fDate.substring(0, 9);
		
		
		//퍼센트계산
		String percent ="";
		int percentRate = 0;
		String fPercent ="";
		int fPercentRate = 0;
		if(goldBuy > bgoldBuy) {

			percentRate =  100-(int)((bgoldBuy/goldBuy)*100);
			percent = "plus";
		}else if(goldBuy < bgoldBuy){
			percentRate = 100-(int)((goldBuy/bgoldBuy)*100);
			percent = "minus";
		}else {
			percentRate = 0;
			percent = "equal";
		}
		//Forecast_20days
		if(goldBuy > fgoldprice) {

			fPercentRate =  100-(int)((fgoldprice/goldBuy)*100);
			fPercent = "minus";
		}else if(goldBuy < fgoldprice){
			fPercentRate = 100-(int)((goldBuy/fgoldprice)*100);
			fPercent = "plus";
		}else {
			fPercentRate = 0;
			fPercent = "equal";
		}
		
//		형변형
		DecimalFormat df = new DecimalFormat("#,##0.00");
		
		String goldBuy1 = df.format(goldBuy);

		String bgoldBuy1 = df.format(bgoldBuy);

		String percentRate1 = df.format(percentRate);
		
		
		List<String> goldPriceForecast = new ArrayList<>();
		goldPriceForecast.add(goldBuy1);

		goldPriceForecast.add(bgoldBuy1);

		goldPriceForecast.add(percent);
		goldPriceForecast.add(percentRate1);
		
		//Forecast_20days
		goldPriceForecast.add(fDate);
		goldPriceForecast.add(fPercent);
		goldPriceForecast.add(df.format(fPercentRate));
		goldPriceForecast.add(df.format(fgoldprice));
		return goldPriceForecast;
	}
}
