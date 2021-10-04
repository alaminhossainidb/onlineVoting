package com.spring.dao.impl;

import java.util.List;

import com.spring.common.ICommonDAO;
import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.Voting;
import com.spring.model.VottingType;

public interface IAdminDAOImpl extends ICommonDAO<Party> {

	void saveVotingType(VottingType vt);

	List<Party> getAllParty();

	List<VottingType> getAllVottingType();

	void saveCandidate(Candidate c);
	List<Candidate> getAllCandidate(String votingCode);
	List<Voting> getAllVote(String votingCode);

}
