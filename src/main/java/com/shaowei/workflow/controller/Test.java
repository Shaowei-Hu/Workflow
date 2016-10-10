package com.shaowei.workflow.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shaowei.workflow.model.History;


@Controller
public class Test {
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public @ResponseBody List<History> getHistoriesByDocumentId(){
		List<History> list = new ArrayList<>();
		return list;
		
	}

}
