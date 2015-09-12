package com.shaowei.workflow.dao;

import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.History;
@Repository
public class HistoryDao extends BaseDao<History>{

	HistoryDao(){
		super(History.class);
	}
}
