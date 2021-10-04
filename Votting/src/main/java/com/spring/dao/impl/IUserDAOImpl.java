package com.spring.dao.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.spring.common.ICommonDAO;
import com.spring.model.Candidate;
import com.spring.model.User;
import com.spring.model.Voting;

public interface IUserDAOImpl extends ICommonDAO<User> {

	List<Candidate> getAllCandidate();

	void vote(Voting v);

	Candidate getOneCandidate(int cid);

	Voting getOneVoter(String nid);

}
