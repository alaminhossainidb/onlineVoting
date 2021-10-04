package com.spring.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.spring.model.Candidate;
import com.spring.model.Voting;

public interface ICommonService<T> {
	
	public void save(HttpServletRequest request);
	public T edit(String id);
	public T update(HttpServletRequest request);
	public List<T> getAll();
	public boolean delete(String id);
	

}
