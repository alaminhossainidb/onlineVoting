package com.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.controller.impl.IAdminController;
import com.spring.model.Candidate;
import com.spring.model.Party;
import com.spring.model.ResultShow;
import com.spring.model.Voting;
import com.spring.model.VottingType;
import com.spring.service.AdminService;

@RestController
public class AdminController implements IAdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/allParty")
	public ModelAndView allParty() {
		List<Party> p = adminService.getAllParty();
		return new ModelAndView("allParty", "party", p);
	}

	@GetMapping("/addPartyPage")
	public ModelAndView addParty() {
		
		return new ModelAndView("addParty");
	}
	
	@GetMapping("/addVotingTypePage")
	public ModelAndView addVotingTypePage() {
		
		return new ModelAndView("addVotingType");
	}
	
	@GetMapping("/addCandidatePage")
	public ModelAndView addCandidatePage(ModelMap map) {
		List<Party> p = adminService.getAllParty();
		List<VottingType> vt = adminService.getAllVottingType();
		
		map.addAttribute("p", p);
		return new ModelAndView("addCandidate", "vt", vt);
	}
	
	@GetMapping("/searchResultPage")
	public ModelAndView searchResultPage(ModelMap map) {
		List<VottingType> vt = adminService.getAllVottingType();
		return new ModelAndView("searchResult", "vt", vt);
	}
	
	@Override
	@PostMapping("/saveParty")
	public ModelAndView save(HttpServletRequest request,  @RequestParam("photo") MultipartFile photo) throws IOException {
		adminService.save(request, photo);
		return new ModelAndView("addParty");
	}
	
	@Override
	@PostMapping("/saveVotingType")
	public ModelAndView saveVotingType(HttpServletRequest request) {
		
		adminService.saveVotingType(request);
		return new ModelAndView("addVotingType");
	}
	
	@Override
	@PostMapping("/saveCandidate")
	public ModelAndView saveCandidate(HttpServletRequest request)  {
		adminService.saveCandidate(request);
		return new ModelAndView("addCandidate");
	}

	@Override
	@PostMapping("/getResult")
	public ModelAndView getResult(HttpServletRequest request, Model model) {
		
	
		List<?> vote = adminService.getAllVote(request);
		
		List<ResultShow> result = new ArrayList<ResultShow>();
		Long totalVote = 0L;
		for (int i = 0; i < vote.size(); i++) {
			Object[] r = (Object[]) vote.get(i);
			ResultShow rs = new ResultShow();
			
			rs.setCandidateName((String) r[0]);
			rs.setPartyName((String) r[1]);
			rs.setVotingCode((String) r[2]);
			rs.setSymbol((String) r[3]);
			rs.setArea((String) r[4]);
			rs.setCandidateVote((Long) r[5]);
			
			totalVote += (Long) r[5];
			result.add(rs);
		}
		
		model.addAttribute("total", totalVote);
		model.addAttribute("result", result);
		
		return new ModelAndView("result");
	}
	
	@Override
	public ModelAndView update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView delete(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@PostMapping("/save")
	public ModelAndView save(HttpServletRequest request) {
		
		adminService.save(request);
		
		return new ModelAndView("result");
	}

	
}
