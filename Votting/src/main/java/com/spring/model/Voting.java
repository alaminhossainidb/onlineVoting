package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "voting")
@Table(name = "voting")
public class Voting {

	@Id
	private int id;
	
	@Column(name = "voterNID")
	private String voterNID;
	
	@Column(name = "candidateName")
	private String candidateName;
	
	@Column(name = "candidatePost")
	private String candidatePost;
	
	@Column(name = "votingCode")
	private String votingCode;
	
	@Column(name = "partyName")
	private String partyName;
	
	@Column(name = "area")
	private String area;
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "status")
	private int status;
	
	

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVoterNID() {
		return voterNID;
	}

	public void setVoterNID(String voterNID) {
		this.voterNID = voterNID;
	}

	public String getCandidateName() {
		return candidateName;
	}

	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}

	public String getCandidatePost() {
		return candidatePost;
	}

	public void setCandidatePost(String candidatePost) {
		this.candidatePost = candidatePost;
	}

	public String getVotingCode() {
		return votingCode;
	}

	public void setVotingCode(String votingCode) {
		this.votingCode = votingCode;
	}

	public String getSymbol() {
		
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}
	
	
	
}
