package service;

import java.text.DecimalFormat;
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

		FactorsRecent factorsRecent = frDao.selectFactorsRecent(fr_id);

		double gold_price_today = factorsRecent.getGold_price();
		double dow_jones_today = factorsRecent.getDow_jones();
		double sp_500_today = factorsRecent.getSp_500();
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

		FactorsRecent factorsRecent_someday = frDao.selectFactorsRecent(fr_id - somedays * 24);

		double gold_price_1day = factorsRecent_someday.getGold_price();
		double dow_jones_1day = factorsRecent_someday.getDow_jones();
		double sp_500_1day = factorsRecent_someday.getSp_500();
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

		double gold_price_result_1day = (gold_price_today - gold_price_1day) / gold_price_1day;
		double dow_jones_result_1day = (dow_jones_today - dow_jones_1day) / dow_jones_1day;
		double sp_500_result_1day = (sp_500_today - sp_500_1day) / sp_500_1day;
		double dollar_index_result_1day = (dollar_index_today - dollar_index_1day) / dollar_index_1day;
		double wti_result_1day = (wti_today - wti_1day) / wti_1day;
		double interest_rate_result_1day = (interest_rate_today - interest_rate_1day) / interest_rate_1day;
		double gdp_result_1day = (gdp_today - gdp_1day) / gdp_1day;
		double inflation_result_1day = (inflation_today - inflation_1day) / inflation_1day;
		double balance_trade_result_1day = (balance_trade_today - balance_trade_1day) / balance_trade_1day;
		double cpi_result_1day = (cpi_today - cpi_1day) / cpi_1day;
		double gold_mine_result_1day = (gold_mine_today - gold_mine_1day) / gold_mine_1day;
		double uncertainty_result_1day = (uncertainty_today - uncertainty_1day) / uncertainty_1day;
		double money_stock_result_1day = (money_stock_today - money_stock_1day) / money_stock_1day;

		DecimalFormat df = new DecimalFormat("#.#####");

		String gold_price_result_1day1 = df.format(gold_price_result_1day);
		String dow_jones_result_1day1 = df.format(dow_jones_result_1day);
		String sp_500_result_1day1 = df.format(sp_500_result_1day);
		String dollar_index_result_1day1 = df.format(dollar_index_result_1day);
		String wti_result_1day1 = df.format(wti_result_1day);
		String interest_rate_result_1day1 = df.format(interest_rate_result_1day);
		String gdp_result_1day1 = df.format(gdp_result_1day);
		String inflation_result_1day1 = df.format(inflation_result_1day);
		String balance_trade_result_1day1 = df.format(balance_trade_result_1day);
		String cpi_result_1day1 = df.format(cpi_result_1day);
		String gold_mine_result_1day1 = df.format(gold_mine_result_1day);
		String uncertainty_result_1day1 = df.format(uncertainty_result_1day);
		String money_stock_result_1day1 = df.format(money_stock_result_1day);

		factorsRecent.setGold_price_rate(gold_price_result_1day1);
		factorsRecent.setDow_jones_rate(dow_jones_result_1day1);
		factorsRecent.setSp_500_rate(sp_500_result_1day1);
		factorsRecent.setDollar_index_rate(dollar_index_result_1day1);
		factorsRecent.setWti_rate(wti_result_1day1);
		factorsRecent.setInterest_rate_rate(interest_rate_result_1day1);
		factorsRecent.setGdp_rate(gdp_result_1day1);
		factorsRecent.setInflation_rate(inflation_result_1day1);
		factorsRecent.setBalance_trade_rate(balance_trade_result_1day1);
		factorsRecent.setCpi_rate(cpi_result_1day1);
		factorsRecent.setGold_mine_rate(gold_mine_result_1day1);
		factorsRecent.setUncertainty_rate(uncertainty_result_1day1);
		factorsRecent.setMoney_stock_rate(money_stock_result_1day1);

		return factorsRecent;
	}

}
