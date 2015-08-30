package com.shaowei.workflow.dao;

import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.User;

@Repository
public class UserDao extends BaseDao<User>{
	
	public UserDao(){
		super(User.class);
	}

}
