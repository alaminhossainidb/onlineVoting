package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.spring.dao.impl.IAdminDAOImpl;
import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.Result;
import com.spring.model.Voting;
import com.spring.model.VottingType;

@Repository
@Transactional
public class AdminDAO implements IAdminDAOImpl{
	
	@Autowired
	EntityManager entityManager;
	
	private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

	
	
	@Override
	public void save(Party p) {
		getSession().save(p);
		getSession().flush();
		
	}

	@Override
	public Party edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Party update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Party> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void saveVotingType(VottingType vt) {
		
		getSession().save(vt);
		getSession().flush();
		
	}
	
	@Override
	public List<Party> getAllParty() {
		Query q = getSession().createQuery("FROM party");
		List<Party> p = ((org.hibernate.query.Query) q).list();
		return p;
	}

	
	@Override
	public List<VottingType> getAllVottingType() {
		Query q = getSession().createQuery("FROM vottingType");
		List<VottingType> vt = ((org.hibernate.query.Query) q).list();
		return vt;
	}


	@Override
	public void saveCandidate(Candidate c) {
		getSession().save(c);
		getSession().flush();
		
	}


	@Override
	public List<Candidate> getAllCandidate(String votingCode) {
		Query q = getSession().createQuery("FROM candidate where votingCode = '"+votingCode+"'");
		List<Candidate> candidate = ((org.hibernate.query.Query) q).list();
		return candidate;
		
	}


	
	@Override
	public List<Voting> getAllVote(String votingCode) {
		Query q = getSession().createQuery("FROM voting where votingCode = '"+votingCode+"'");
		List<Voting> vote = ((org.hibernate.query.Query) q).list();
		return vote;
	
	}
	

	public List<?> getResult(String votingCode) {
		String sql = "select candidateName, partyName, votingCode, symbol, area, sum(status) from voting where votingCode = '"+votingCode+"' group by symbol";
		
		Query q = getSession().createQuery(sql);
		List<?> vote = ((org.hibernate.query.Query) q).list();
		
		return vote;
	
	}

	public void saveResult(Result rs) {
		getSession().save(rs);
		getSession().flush();
	}


}
