package dao;

import model.Price;

public interface IPriceDao {

	public int insertPrice(Price price);
	
	public int deletePrice(int g_id);
	
	public Price selectPrice(int g_id);

}
