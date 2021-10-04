package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "party")
@Table(name = "party")
public class Party {
	
	@Id
	private int id;
	
	@Column(name = "partyName")
	private String partyName;
	
	@Column(name = "partyCode")
	private String partyCode;
	
	@Column(name = "partySymbol")
	private String partySymbol;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getPartyCode() {
		return partyCode;
	}

	public void setPartyCode(String partyCode) {
		this.partyCode = partyCode;
	}

	public String getPartySymbol() {
		return partySymbol;
	}

	public void setPartySymbol(String partySymbol) {
		this.partySymbol = partySymbol;
	}


}
