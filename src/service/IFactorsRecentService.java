package service;

import java.util.List;

import model.FactorsRecent;

public interface IFactorsRecentService {
	
	public List<FactorsRecent> factorsRecentAll();
	public FactorsRecent factorsRecentResultSomedays(int somedays);

}
