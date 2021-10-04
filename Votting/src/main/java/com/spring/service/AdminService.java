package com.spring.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spring.dao.AdminDAO;
import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.Result;
import com.spring.model.Voting;
import com.spring.model.VottingType;
import com.spring.service.impl.IAdminServiceImpl;

@Service
public class AdminService implements IAdminServiceImpl {
	
	@Autowired
	private AdminDAO adminDAO;
	
	// File Saving Method
	@Autowired 
	ServletContext servletContext;
    
	public void saveFile(MultipartFile file, String fileName, String path) throws IOException {
		byte[] bytes  = file.getBytes();
	
		String filePath = servletContext.getRealPath(path);
		File dir = new File(filePath);
		File serverFile = new File(dir.getAbsolutePath()
				+ File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
	}
	
	// End File Saving Method
	
	public final String imagePath = "/assets/partySymbol/";

	@Override
	public void save(HttpServletRequest request , MultipartFile photo) throws IOException {
		
		Party p = new Party();
		
		
		saveFile(photo, photo.getOriginalFilename(), imagePath);
		
		p.setPartyName(request.getParameter("partyName"));
		p.setPartyCode(request.getParameter("partyCode"));
		p.setPartySymbol(imagePath+photo.getOriginalFilename());
		
		adminDAO.save(p);
		
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
	public void saveVotingType(HttpServletRequest request) {
		VottingType vt = new VottingType();
		
		vt.setName(request.getParameter("name"));
		vt.setCode(request.getParameter("code"));
		vt.setDate(request.getParameter("date"));
		
		adminDAO.saveVotingType(vt);
		
	}
	
	@Override
	public List<Party> getAllParty() {
	 List<Party> party =  adminDAO.getAllParty();
	 return party;
		
	}
	
	
	@Override
	public List<VottingType> getAllVottingType() {
	 List<VottingType> vt =  adminDAO.getAllVottingType();
	 return vt;
		
	}

	@Override
	public void save(HttpServletRequest request) {
		Map<String, String[]> map = request.getParameterMap();
		
		String[] candidateName = map.get("candidateName[]");
		String[] partyName = map.get("partyName[]");
		String[] symbol= map.get("symbol[]");
		String[] totalVote= map.get("totalVote[]");
		String[] percentage= map.get("percentage[]");
		String[] votingCode= map.get("votingCode[]");
		
		
		for (int i = 0; i< candidateName.length; i++) {
		Result rs = new Result();
		
		rs.setCandidateName(candidateName[i]);
		rs.setPartyName(partyName[i]);
		rs.setPercentage(percentage[i]);
		rs.setSymbol(symbol[i]);
		rs.setTotalVote(totalVote[i]);
		rs.setVotingCode(votingCode[i]);
		
		adminDAO.saveResult(rs);
		}
		
	}
	
	@Override
	public void saveCandidate(HttpServletRequest request) {
		Candidate c = new Candidate();
		
		c.setName(request.getParameter("name"));
		c.setArea(request.getParameter("area"));
		c.setPartyName(request.getParameter("partyName"));
		c.setPost(request.getParameter("post"));
		c.setSymbol(request.getParameter("symbol"));
		c.setVotingCode(request.getParameter("votingCode"));
		
		adminDAO.saveCandidate(c);
		
	}
	
	
	@Override
	public List<Candidate> getAllCandidate(HttpServletRequest request) {
		String votingCode = request.getParameter("votingCode");
		List<Candidate> candidate = adminDAO.getAllCandidate(votingCode);
		return candidate;
	}
	

	@Override
	public List<?> getAllVote(HttpServletRequest request) {
		String votingCode = request.getParameter("votingCode");
		List<?> vote = adminDAO.getResult(votingCode);
		return vote;
	}
	

}
