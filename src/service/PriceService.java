package service;

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
	
	
}
