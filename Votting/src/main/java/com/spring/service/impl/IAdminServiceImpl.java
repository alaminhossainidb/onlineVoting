package com.spring.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.spring.common.ICommonService;
import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.Voting;
import com.spring.model.VottingType;

public interface IAdminServiceImpl extends ICommonService<Party> {

	void saveVotingType(HttpServletRequest request);

	List<Party> getAllParty();

	List<VottingType> getAllVottingType();

	void save(HttpServletRequest request, MultipartFile photo) throws IOException;

	void saveCandidate(HttpServletRequest request);
	List<Candidate> getAllCandidate(HttpServletRequest request);
	List<?> getAllVote(HttpServletRequest request);

}
