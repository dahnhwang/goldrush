package service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IPriceDao;
import model.Price;

@Service
public class PriceService implements IPriceService {

	@Autowired
	private IPriceDao pDao;

	@Override
	public Price goldPrice() {
		// TODO Auto-generated method stub
		List<Price> goldPriceAll = pDao.selectAllPrice();
		int g_id = goldPriceAll.size();
		Price goldPrice = pDao.selectPrice(g_id);
		return goldPrice;
	}

	@Override
	public List<String> goldPriceResult() {
		// TODO Auto-generated method stub
		List<Price> goldPriceAll = pDao.selectAllPrice();
		int g_id = goldPriceAll.size();
		Price goldPrice = pDao.selectPrice(g_id);
		Price prevGoldPrice = pDao.selectPrice(g_id - 1);

		double exRate = goldPrice.getEx_rate();
		double goldBuy = goldPrice.getGold_buy();
		double goldSell = goldPrice.getGold_sell();
		double prevGoldBuy = prevGoldPrice.getGold_buy();
		double prevGoldSell = prevGoldPrice.getGold_sell();
		double gold24Buy = goldBuy / 28.35 * 3.75 * exRate;
		double gold24Sell = goldSell / 28.35 * 3.75 * exRate;
		double prevGold24Buy = prevGoldBuy / 28.35 * 3.75 * exRate;
		double prevGold24Sell = prevGoldSell / 28.35 * 3.75 * exRate;
		double gold24BuyChange = gold24Buy - prevGold24Buy;
		double gold24SellChange = gold24Sell - prevGold24Sell;
		double gold18Buy = goldBuy / 28.35 * 3.75 * 0.825 * exRate;
		double gold18Sell = goldSell / 28.35 * 3.75 * 0.825 * exRate;
		double prevGold18Buy = prevGoldBuy / 28.35 * 3.75 * 0.825 * exRate;
		double prevGold18Sell = prevGoldSell / 28.35 * 3.75 * 0.825 * exRate;
		double gold18BuyChange = gold18Buy - prevGold18Buy;
		double gold18SellChange = gold18Sell - prevGold18Sell;
		double gold14Buy = goldBuy / 28.35 * 3.75 * 0.6435 * exRate;
		double gold14Sell = goldSell / 28.35 * 3.75 * 0.6435 * exRate;
		double prevGold14Buy = prevGoldBuy / 28.35 * 3.75 * 0.6435 * exRate;
		double prevGold14Sell = prevGoldSell / 28.35 * 3.75 * 0.6435 * exRate;
		double gold14BuyChange = gold14Buy - prevGold14Buy;
		double gold14SellChange = gold14Sell - prevGold14Sell;

		DecimalFormat df = new DecimalFormat("#,##0.00");

		String gold24Buy1 = df.format(gold24Buy);
		String gold24Sell1 = df.format(gold24Sell);
		String gold18Buy1 = df.format(gold18Buy);
		String gold18Sell1 = df.format(gold18Sell);
		String gold14Buy1 = df.format(gold14Buy);
		String gold14Sell1 = df.format(gold14Sell);

		String gold24BuyChangeStr = null;
		if (gold24BuyChange < 0) {
			gold24BuyChangeStr = df.format(gold24BuyChange); // 6
		} else {
			gold24BuyChangeStr = "+" + df.format(gold24BuyChange);
		}

		String gold24SellChangeStr = null;
		if (gold24SellChange < 0) {
			gold24SellChangeStr = df.format(gold24SellChange);
		} else {
			gold24SellChangeStr = "+" + df.format(gold24SellChange);
		}

		String gold18BuyChangeStr = null;
		if (gold18BuyChange < 0) {
			gold18BuyChangeStr = df.format(gold18BuyChange); // 8
		} else {
			gold18BuyChangeStr = "+" + df.format(gold18BuyChange);
		}

		String gold18SellChangeStr = null;
		if (gold18SellChange < 0) {
			gold18SellChangeStr = df.format(gold18SellChange);
		} else {
			gold18SellChangeStr = "+" + df.format(gold18SellChange);
		}

		String gold14BuyChangeStr = null;
		if (gold14BuyChange < 0) {
			gold14BuyChangeStr = df.format(gold14BuyChange); // 10
		} else {
			gold14BuyChangeStr = "+" + df.format(gold14BuyChange);
		}

		String gold14SellChangeStr = null;
		if (gold14SellChange < 0) {
			gold14SellChangeStr = df.format(gold14SellChange);
		} else {
			gold14SellChangeStr = "+" + df.format(gold14SellChange);
		}

		List<String> goldPriceResult = new ArrayList<>();
		goldPriceResult.add(gold24Buy1);
		goldPriceResult.add(gold24Sell1);
		goldPriceResult.add(gold18Buy1);
		goldPriceResult.add(gold18Sell1);
		goldPriceResult.add(gold14Buy1);
		goldPriceResult.add(gold14Sell1);
		goldPriceResult.add(gold24BuyChangeStr);
		goldPriceResult.add(gold24SellChangeStr);
		goldPriceResult.add(gold18BuyChangeStr);
		goldPriceResult.add(gold18SellChangeStr);
		goldPriceResult.add(gold14BuyChangeStr);
		goldPriceResult.add(gold14SellChangeStr);

		return goldPriceResult;
	}

}
