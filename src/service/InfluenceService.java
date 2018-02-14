package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IInfluenceDao;
import model.Influence;

@Service
public class InfluenceService implements IInfluenceService {

	@Autowired
	private IInfluenceDao iDao;

	@Override
	public Influence influenceReal() {
		// TODO Auto-generated method stub
		Influence real = iDao.influenceReal();
		return real;
	}

	@Override
	public Influence influenceRelative() {
		// TODO Auto-generated method stub
		Influence relative = iDao.influenceRelative();
		return relative;
	}


}
