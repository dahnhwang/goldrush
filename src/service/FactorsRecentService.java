package service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IFactorsRecentDao;
import model.FactorsRecent;

@Service
public class FactorsRecentService implements IFactorsRecentService {

	@Autowired
	private IFactorsRecentDao frDao;

	@Override
	public List<FactorsRecent> factorsRecentAll() {
		// TODO Auto-generated method stub
		List<FactorsRecent> factorsRecentAll = frDao.selectAllFactorsRecent();
		return factorsRecentAll;
	}

	@Override
	public FactorsRecent factorsRecentResultSomedays(int somedays) {
		// TODO Auto-generated method stub
		
		List<FactorsRecent> factorsRecentAll = frDao.selectAllFactorsRecent();
		// List<String> factorsRecentResult1Day = new ArrayList<>();

		int fr_id = factorsRecentAll.size();
		System.out.println("ddddd"+fr_id);

		FactorsRecent factorsRecent = frDao.selectFactorsRecent(fr_id);

		double gold_price_today = factorsRecent.getGold_price();
		double dow_jones_price_today = factorsRecent.getDow_jones_price();
		double sp500_today = factorsRecent.getSp500();
		double dollar_index_today = factorsRecent.getDollar_index();
		double wti_today = factorsRecent.getWti();
		double interest_rate_today = factorsRecent.getInterest_rate();
		double gdp_today = factorsRecent.getGdp();
		double inflation_today = factorsRecent.getInflation();
		double balance_trade_today = factorsRecent.getBalance_trade();
		double cpi_today = factorsRecent.getCpi();
		double gold_mine_today = factorsRecent.getGold_mine();
		double uncertainty_today = factorsRecent.getUncertainty();
		double money_stock_today = factorsRecent.getMoney_stock();

		FactorsRecent factorsRecent_someday = frDao.selectFactorsRecent(fr_id - somedays);

		double gold_price_1day = factorsRecent_someday.getGold_price();
		double dow_jones_price_1day = factorsRecent_someday.getDow_jones_price();
		double sp500_1day = factorsRecent_someday.getSp500();
		double dollar_index_1day = factorsRecent_someday.getDollar_index();
		double wti_1day = factorsRecent_someday.getWti();
		double interest_rate_1day = factorsRecent_someday.getInterest_rate();
		double gdp_1day = factorsRecent_someday.getGdp();
		double inflation_1day = factorsRecent_someday.getInflation();
		double balance_trade_1day = factorsRecent_someday.getBalance_trade();
		double cpi_1day = factorsRecent_someday.getCpi();
		double gold_mine_1day = factorsRecent_someday.getGold_mine();
		double uncertainty_1day = factorsRecent_someday.getUncertainty();
		double money_stock_1day = factorsRecent_someday.getMoney_stock();

		String gold_price_result_1day = ((gold_price_today - gold_price_1day) / gold_price_1day) + "";
		String dow_jones_price_result_1day = ((dow_jones_price_today - dow_jones_price_1day) / dow_jones_price_1day)
				+ "";
		String sp500_result_1day = ((sp500_today - sp500_1day) / sp500_1day) + "";
		String dollar_index_result_1day = ((dollar_index_today - dollar_index_1day) / dollar_index_1day) + "";
		String wti_result_1day = ((wti_today - wti_1day) / wti_1day) + "";
		String interest_rate_result_1day = ((interest_rate_today - interest_rate_1day) / interest_rate_1day) + "";
		String gdp_result_1day = ((gdp_today - gdp_1day) / gdp_1day) + "";
		String inflation_result_1day = ((inflation_today - inflation_1day) / inflation_1day) + "";
		String balance_trade_result_1day = ((balance_trade_today - balance_trade_1day) / balance_trade_1day) + "";
		String cpi_result_1day = ((cpi_today - cpi_1day) / cpi_1day) + "";
		String gold_mine_result_1day = ((gold_mine_today - gold_mine_1day) / gold_mine_1day) + "";
		String uncertainty_result_1day = ((uncertainty_today - uncertainty_1day) / uncertainty_1day) + "";
		String money_stock_result_1day = ((money_stock_today - money_stock_1day) / money_stock_1day) + "";

		factorsRecent.setGold_price_rate(gold_price_result_1day);
		factorsRecent.setDow_jones_price_rate(dow_jones_price_result_1day);
		factorsRecent.setSp500_rate(sp500_result_1day);
		factorsRecent.setDollar_index_rate(dollar_index_result_1day);
		factorsRecent.setWti_rate(wti_result_1day);
		factorsRecent.setInterest_rate_rate(interest_rate_result_1day);
		factorsRecent.setGdp_rate(gdp_result_1day);
		factorsRecent.setInflation_rate(inflation_result_1day);
		factorsRecent.setBalance_trade_rate(balance_trade_result_1day);
		factorsRecent.setCpi_rate(cpi_result_1day);
		factorsRecent.setGold_mine_rate(gold_mine_result_1day);
		factorsRecent.setUncertainty_rate(uncertainty_result_1day);
		factorsRecent.setMoney_stock_rate(money_stock_result_1day);

		return factorsRecent;
	}

}
