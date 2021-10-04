package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.Candidate;
import com.spring.model.Result;
import com.spring.dao.UserDAO;
import com.spring.model.User;
import com.spring.model.Voting;
import com.spring.service.impl.IUserServiceImpl;

@Service
public class UserService implements IUserServiceImpl {
	
	@Autowired
	private UserDAO userDAO;
	
	public boolean login(HttpServletRequest request) {
		
		User u = new User();
		
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		
		return userDAO.login(u);
	}

	@Override
	public void save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Candidate> getAllCandidate() {
		List<Candidate> c = userDAO.getAllCandidate();
		return c;
	}

	@Override
	public void vote(Candidate c, String nid) {
		Voting v = new Voting();
		
		v.setVoterNID(nid);
		v.setCandidateName(c.getName());
		v.setCandidatePost(c.getPost());
		v.setSymbol(c.getSymbol());
		v.setVotingCode(c.getVotingCode());
		v.setArea(c.getArea());
		v.setPartyName(c.getPartyName());
		v.setStatus(1);
		userDAO.vote(v);
		
	}

	@Override
	public Candidate getOneCandidate(int id) {
		Candidate c = userDAO.getOneCandidate(id);
		return c;
	}

	@Override
	public Voting getOneVoter(String nid) {
		Voting v = userDAO.getOneVoter(nid);
		return v;
	}

	public boolean getVotingVal(String nid) {
		boolean b = userDAO.getVotingVal(nid);
		
		return b;
	}

	public List<Result> getVotingResult(String vCode) {
		List<Result> r = userDAO.getVotingResult(vCode);
		return r;
	}

	
	
	
}
