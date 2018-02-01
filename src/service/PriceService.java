package service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IPriceDao;
import model.Price;

@Service
public class PriceService implements IPriceService{

	@Autowired
	private IPriceDao pDao;
	
	@Override
	public Price goldPrice() {
		// TODO Auto-generated method stub
		List<Price> goldPriceAll =pDao.selectAllPrice();
		int g_id = goldPriceAll.size();
		Price goldPrice = pDao.selectPrice(g_id);
		return goldPrice;
	}

	@Override
	public List<String> goldPriceResult() {
		// TODO Auto-generated method stub
		List<Price> goldPriceAll =pDao.selectAllPrice();
		int g_id = goldPriceAll.size();
		Price goldPrice = pDao.selectPrice(g_id);
		
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
		
		List<String> goldPriceResult = new ArrayList<>();
		goldPriceResult.add(gold24Buy1);
		goldPriceResult.add(gold24Sell1);
		goldPriceResult.add(gold18Buy1);
		goldPriceResult.add(gold18Sell1);
		goldPriceResult.add(gold14Buy1);
		goldPriceResult.add(gold14Sell1);
		
		return goldPriceResult;
	}
	
	
}
