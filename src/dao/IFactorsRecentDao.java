package dao;

import java.util.List;

import model.FactorsRecent;

public interface IFactorsRecentDao {

	public FactorsRecent selectFactorsRecent(int fr_id);

	public List<FactorsRecent> selectAllFactorsRecent();

}
