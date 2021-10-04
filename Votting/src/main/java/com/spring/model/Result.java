package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "result")
@Table(name = "result")
public class Result {
	
	@Id
	@GeneratedValue // bulk saving
	private int id;
	
	@Column(name = "candidateName")
	private String candidateName;
	
	/*
	 * @Column(name = "candidatePost") private String candidatePost;
	 */
	
	@Column(name = "totalVote")
	private String totalVote;
	
	@Column(name = "percentage")
	private String percentage;
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "partyName")
	private String partyName;
	
	@Column(name = "votingCode")
	private String votingCode;
	
	
	
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

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCandidateName() {
		return candidateName;
	}

	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}

	public String getTotalVote() {
		return totalVote;
	}

	public void setTotalVote(String totalVote) {
		this.totalVote = totalVote;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	
	

}
