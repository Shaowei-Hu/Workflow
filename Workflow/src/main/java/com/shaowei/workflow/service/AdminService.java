package com.shaowei.workflow.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.AdminDao;
import com.shaowei.workflow.model.Admin;

@Service
public class AdminService {

	@Resource
	private AdminDao adminDao;

	public Admin verifyExistence(String name, String password) {
		Admin admin = adminDao.getAdminByName(name);
		if (admin!=null && admin.getPassword().equals(password))
			return admin;
		else
			return null;
	}

}
