package com.shaowei.workflow.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.TraderDao;
import com.shaowei.workflow.model.Trader;

@Service
public class TraderService {

	@Resource
	private TraderDao traderDao;

	public boolean verifyExistence(String name, String password) {
		Trader trader = traderDao.getTraderByName(name);
		if (trader!=null && trader.getPassword().equals(password))
			return true;
		else
			return false;
	}

}
