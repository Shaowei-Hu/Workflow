package com.shaowei.workflow.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shaowei.workflow.exception.CustomGenericException;
import com.shaowei.workflow.model.Comment;
import com.shaowei.workflow.model.Document;
import com.shaowei.workflow.model.User;
import com.shaowei.workflow.service.DocumentService;
import com.shaowei.workflow.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Resource
	UserService userService;
	@Resource
	DocumentService documentService;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request) {
		User user = userService.verifyExistence(username, password);
		if (user != null){
			request.getSession().setAttribute("user", user);
			return "userViews/userHome";
		} else
			throw new CustomGenericException("100", "Login error");
	}
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String createDocument(Model model){
		model.addAttribute("document", new Document());
		return "userViews/createWorkflowDocument";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String createDocument(Document document, HttpServletRequest request, Model model){
		User author = (User) request.getSession().getAttribute("user");
		if(documentService.addDocument(document, author)){
			model.addAttribute("document", document);
			model.addAttribute("comment", new Comment());
			return "userViews/showWorkflowDocument";
		}
			
		else
			throw new CustomGenericException("200", "Document has not been created, some exceptions have been found");
	}
	
	@RequestMapping(value="/show/{documentId}", method=RequestMethod.GET)
	public String showDocument(@PathVariable int documentId, Model model){
		Document document = documentService.getDocument(documentId);
		model.addAttribute("document", document);
		model.addAttribute("comment", new Comment());
		return "userViews/showWorkflowDocument";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String listDocuments(Model model){
		List<Document> allDocuments = documentService.getAllDocuments();
		model.addAttribute("allDocuments", allDocuments);
		return "userViews/allWorkflowDocuments";
	}
	
	@RequestMapping(value="/myList", method=RequestMethod.GET)
	public String listMyDocuments(Model model, HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("user");	
		List<Document> allDocuments = documentService.getAllDocumentByResponsible(user.getUserId());
		model.addAttribute("allDocuments", allDocuments);
		return "userViews/allWorkflowDocuments";
	}
	
	@RequestMapping(value="/show/addComment", method=RequestMethod.POST)
	public String addComment(Comment comment, HttpServletRequest request, Model model){
		User responsible = (User) request.getSession().getAttribute("user");
		boolean sucess = documentService.addComment(comment, responsible);
		if(sucess){
			Document newDocument = documentService.getDocumentByComment(comment);
			model.addAttribute("document", newDocument);
			model.addAttribute("comment", new Comment());
			return "userViews/showWorkflowDocument";
		} else
			throw new CustomGenericException("202", "Comment has not been created, some exceptions have been found");
		
	}

}
