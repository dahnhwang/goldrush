package dao;

import java.util.List;

import model.Price;

public interface IPriceDao {

	public int insertPrice(Price price);
	
	public int deletePrice(int g_id);
	
	public Price selectPrice(int g_id);
	
	public List<Price> selectAllPrice();

}
