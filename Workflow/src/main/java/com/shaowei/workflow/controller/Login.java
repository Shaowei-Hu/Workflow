package com.shaowei.workflow.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shaowei.workflow.service.TraderService;

@Controller
public class Login {

	@Resource
	private TraderService traderService;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
		System.out.println(username+"  "+password);
		if (traderService.verifyExistence(username, password))
			return "createWorkflowUser";
		else
			return "error";
	}

}
