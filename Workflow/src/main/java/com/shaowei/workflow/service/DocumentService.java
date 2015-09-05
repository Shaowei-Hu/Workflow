package com.shaowei.workflow.service;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.CommentDao;
import com.shaowei.workflow.dao.DocumentDao;
import com.shaowei.workflow.model.Comment;
import com.shaowei.workflow.model.Document;
import com.shaowei.workflow.model.User;

@Service
public class DocumentService {

	@Resource
	private DocumentDao documentDao;
	@Resource
	private CommentDao commentDao;

	public boolean addDocument(Document document, User author) {
		try {
			String amount = document.getAmountSt();
			amount = amount.replaceAll(",", "");
			document.setAmount(new BigDecimal(amount));
			String resource = document.getResourceSt();
			resource = resource.replaceAll(",", "");
			document.setResource(new BigDecimal(resource));
			document.setAuthor(author);
			document.setResponsible(author);

			documentDao.add(document);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public Document getDocument(int documentId){
		return documentDao.getFullDocument(documentId);
	}
	
	public List<Document> getAllDocuments(){
		return documentDao.getAll();
	}
	
	public boolean addComment(Comment comment, User author){
		try {
			Document document = documentDao.get(comment.getDocumentId());
			comment.setDocument(document);
			comment.setAuthor(author);
			commentDao.add(comment);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public Document getDocumentByComment(Comment comment){
		return getDocument(comment.getDocumentId());
	}
	
	public List<Document> getAllDocumentByResponsible(int responsibleId){
		return documentDao.getDocumentByResiponble(responsibleId);
	}
}
