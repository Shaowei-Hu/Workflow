package com.shaowei.workflow.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.UserDao;
import com.shaowei.workflow.model.User;

@Service
public class UserService {

	@Resource
	private UserDao userDao;

	public boolean addUser(User user) {
		try {
			int managerId = user.getManagerId();
			int partnerId = user.getPartnerId();
			User manager = userDao.get(managerId);
			User partner = userDao.get(partnerId);
			if(manager != null){
				user.setManager(manager);		
			}
			if(partner != null)
				user.setPartner(partner);
			userDao.add(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	public List<User> getAllUsers(){
		
		return userDao.getAll();
	}
	
	public User getUserById(int userId){
		return userDao.get(userId);
	}

}
