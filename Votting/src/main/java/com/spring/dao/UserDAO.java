package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.spring.dao.impl.IUserDAOImpl;
import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.Result;
import com.spring.model.User;
import com.spring.model.Voting;

@Repository
@Transactional
public class UserDAO implements IUserDAOImpl{

	@Autowired
	EntityManager entityManager;
	
	private Session getSession() {
        return entityManager.unwrap(Session.class);
    }
	
	public boolean login(User u) {
		Query query = getSession().createQuery("FROM user");
        List<User> allUser = ((org.hibernate.query.Query) query).list();
         boolean b = false;
	        for(User  us : allUser) {
	        	if(u.getUsername().equals(us.getUsername()) && u.getPassword().equals(us.getPassword())) {
	        		b = true;
	        		break;
	        	}else {
	        		b = false;
	        	}
	        	 
	         }
	      return b;
		
	}
	
	@Override
	public User edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void save(User t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Party p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Candidate> getAllCandidate() {
		
		Query query = getSession().createQuery("FROM candidate");
        List<Candidate> c = ((org.hibernate.query.Query) query).list();
		return c;
	}

	@Override
	public void vote(Voting v) {
		getSession().save(v);
		getSession().flush();
		
	}
	
	@Override
	public Candidate getOneCandidate(int cid) {
		
		String sql = "from candidate where id = '"+cid+"'";
		List<Candidate> c = getSession().createQuery(sql).list();
		
		return c.get(0);
		
	}

	@Override
	public Voting getOneVoter(String nid) {
		String sql = "from voting where voterNID = '"+nid+"'";
		List<Voting> c = getSession().createQuery(sql).list();
		
		return c.get(0);
	}

	public boolean getVotingVal(String nid) {
		String sql = "from voting where voterNID = '"+nid+"'";
		List<Voting> c = getSession().createQuery(sql).list();
		
		boolean b = false;
		if(c.size() >=1) {
			b = true;
		}else {
			b = false;
		}
		return b;
	}

	public List<Result> getVotingResult(String vCode) {
		String sql = "from result where votingCode = '"+vCode+"'";
		List<Result> r = getSession().createQuery(sql).list();
		return r;
	}

	}
