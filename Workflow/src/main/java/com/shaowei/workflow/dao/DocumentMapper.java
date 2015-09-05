package com.shaowei.workflow.dao;

import java.util.List;

import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.shaowei.workflow.model.Document;
import com.shaowei.workflow.model.User;

public interface DocumentMapper {
	
	 @Select("SELECT * FROM wkf_document WHERE RESPONSIBLE_ID=#{responsibleId} ")
	 @Results({
	  @Result(id=true, property="documentId", column="DOCUMENT_ID"),
	  @Result(property="amount", column="amount"),
	  @Result(property="client", column="client"),
	  @Result(property="resource", column="resource"),
	  @Result(property="currentStep", column="CURRENTSTEP"),
	  @Result(property="author", javaType=com.shaowei.workflow.model.User.class, column="AUTHOR_ID", one=@One(select = "getUser")),
	  @Result(property="responsible", javaType=com.shaowei.workflow.model.User.class, column="RESPONSIBLE_ID", one=@One(select = "getUser"))
	 })
	 public List<Document> getAllDocumentByResponsible(int responsibleId);
	 
	 @Select("SELECT USER_ID as userId, NAME as userName FROM wkf_user WHERE USER_ID=#{userId}")
	 public User getUser(int userId);

}
