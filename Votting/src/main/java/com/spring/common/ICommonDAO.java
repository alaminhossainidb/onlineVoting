package com.spring.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.Result;
import com.spring.model.Voting;



public interface ICommonDAO<T> {

	public void save(T t);
	public T edit(String id);
	public T update(HttpServletRequest request);
	public List<T> getAll();
	public boolean delete(String id);
	void save(Party p);
	
	
	
}
