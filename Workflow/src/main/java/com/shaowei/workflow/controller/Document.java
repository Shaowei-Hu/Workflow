package com.shaowei.workflow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Document {


	@RequestMapping(value = "document", method = RequestMethod.GET)
	public String login(Model model) {
		return "createWorkflowDocument";
	}

}
