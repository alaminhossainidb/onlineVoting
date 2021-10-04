package com.spring.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.spring.common.ICommonService;
import com.spring.model.Candidate;
import com.spring.model.User;
import com.spring.model.Voting;

public interface IUserServiceImpl extends ICommonService<User>{

	List<Candidate> getAllCandidate();
	
	Candidate getOneCandidate(int id);

	void vote(Candidate c, String nid);

	Voting getOneVoter(String nid);

}
