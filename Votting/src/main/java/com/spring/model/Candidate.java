package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "candidate")
@Table(name = "candidate")
public class Candidate {
	

	@Id
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "area")
	private String area;
	
	@Column(name = "partyName")
	private String partyName;
	
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "votingCode")
	private String votingCode;
	
	@Column(name = "post")
	private String post;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
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

	public String getVotingCode() {
		return votingCode;
	}

	public void setVotingCode(String votingCode) {
		this.votingCode = votingCode;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}
	
	

}
