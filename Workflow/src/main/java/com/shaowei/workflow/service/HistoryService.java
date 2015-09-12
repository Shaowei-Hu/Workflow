package com.shaowei.workflow.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.HistoryDao;
import com.shaowei.workflow.model.History;

@Service
public class HistoryService {
	@Resource
	private HistoryDao historyDao;
	
	public boolean addHistory(History history){
		try {
			historyDao.add(history);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
