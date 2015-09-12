package com.shaowei.workflow.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.UserDao;
import com.shaowei.workflow.model.KeyValue;
import com.shaowei.workflow.model.User;

@Service
public class UserService {

	@Resource
	private UserDao userDao;
	@Resource
	private WorkflowService workflowService;
	
	public User verifyExistence(String name, String password) {
		User user = userDao.getUserByName(name);
		if (user!=null && user.getUserPassword().equals(password)){
			user = setCapacity(user);
			return user;
		}
		else
			return null;
	}

	public boolean addUser(User user) {
		try {
			user.setUserPassword("initial");
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
	
	public boolean updateUser(User user){
		
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
			userDao.update(user);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean deleteUser(int userId){
		try {
			userDao.delete(userId);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<User> getUserByJob(String job){
		return userDao.getUsersByJob(job);
	}
	
	public List<KeyValue> getUserJobByJob(String job){
		return userDao.getUserJobByJob(job);
	}
	
	public List<KeyValue> getIntervenorForId(int id){
		String job = workflowService.getIntervenorJobById(id);
		return getUserJobByJob(job);
	}
	
	private User setCapacity(User user){
		if(user.getJob().equalsIgnoreCase("Trader")){
			user.setCapacity("Create");
		}
		else
			user.setCapacity("null");
		return user;
	}

}
