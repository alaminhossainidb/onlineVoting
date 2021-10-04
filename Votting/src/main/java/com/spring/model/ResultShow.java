package com.spring.model;

public class ResultShow {
	private String candidateName;
	private Long candidateVote;
	private String partyName;
	private String area;
	private String symbol;
	private String votingCode;
	
	
	
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public String getVotingCode() {
		return votingCode;
	}

	public void setVotingCode(String votingCode) {
		this.votingCode = votingCode;
	}

	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getCandidateName() {
		return candidateName;
	}
	
	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}
	
	public Long getCandidateVote() {
		return candidateVote;
	}
	
	public void setCandidateVote(Long candidateVote) {
		this.candidateVote = candidateVote;
	}
	
	
}
