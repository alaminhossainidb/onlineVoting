package com.spring.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.controller.impl.IUserController;
import com.spring.model.Candidate;
import com.spring.model.Result;
import com.spring.model.ResultShow;
import com.spring.model.Voting;
import com.spring.model.VottingType;
import com.spring.service.AdminService;
import com.spring.service.UserService;

import ch.qos.logback.core.net.SyslogOutputStream;

@RestController
public class Controller implements IUserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/")
	public ModelAndView index() {
		
		return new ModelAndView("index");
	}
	
	@GetMapping("/loginPage")
	public ModelAndView loginPage() {
		return new ModelAndView("loginPage");
	}
	
	@PostMapping("/login")
	public ModelAndView login(HttpServletRequest request, ModelMap map) {
		boolean b = userService.login(request);
		
		if(b == true && request.getParameter("username").equals("admin")) {
			return new ModelAndView("adminPage");
		}else {
			map.addAttribute("msg", "Wrong Username or Password");
			return new ModelAndView("loginPage");
		}
		
	}

	@GetMapping("/nidInfo")
	public ModelAndView nidInfo() {
		return new ModelAndView("nidInfo");
	}
	
	@GetMapping("/searchReceipt")
	public ModelAndView searchReceipt() {
		
		return new ModelAndView("searchVotingReceipt");
	}

	@GetMapping("/electionResult")
	public ModelAndView searchResult() {
		
		List<VottingType> vt = adminService.getAllVottingType();
		return new ModelAndView("srchResult", "vt", vt);
	}
	@Override
	@PostMapping("/passVal")
	public ModelAndView passVal(HttpServletRequest request, ModelMap map) {
		String nidVal = request.getParameter("nid");
		String dobVal = request.getParameter("dob");
		
		if(nidVal.equals(null) || dobVal.equals(null)) {
			System.out.println("Hit if");
			map.addAttribute("msg", "NID or Date Of Birth does not match");
			return new ModelAndView("nidInfo");
		}else {
			
			System.out.println("hit else");
			map.addAttribute("nid", nidVal);
			map.addAttribute("dob", dobVal);
			return new ModelAndView("otp");
			
		}
	}
	
	@Override
	@PostMapping("/votingPage")
	public ModelAndView votingPage(HttpServletRequest request, ModelMap map) {
		System.out.println(request.getParameter("nid1"));
		String nid = request.getParameter("nid1");
		// Validation Voter
		boolean b = userService.getVotingVal(nid);
		System.out.println(b);
		if(b) {
			map.addAttribute("err", "You have Already Voted !!");
			return new ModelAndView("nidInfo");
		}else{
			List<Candidate> candidates = userService.getAllCandidate();
			map.addAttribute("nid",request.getParameter("nid1"));
			return new ModelAndView("votingPage", "candidate", candidates);
		}
		
	}
	
	@Override
	@GetMapping("/vote/{id}/{nid}")
	public ModelAndView vote(@PathVariable String id, @PathVariable String nid, ModelMap map) {
		
		int cid = Integer.valueOf(id);
		Candidate c = userService.getOneCandidate(cid);
		userService.vote(c, nid);
		Voting  v = userService.getOneVoter(nid);
		map.addAttribute("nid", nid);
		return new ModelAndView("votingReceipt", "c" , v);
	}
	
	@Override
	@PostMapping("/searchVotingReceipt")
	public ModelAndView searchVotingReceipt(HttpServletRequest request, ModelMap map) {
		String nid = request.getParameter("nid");
		
		boolean b = userService.getVotingVal(nid);
		if(b) {
			System.out.println("If   "+b);
			Voting  v = userService.getOneVoter(nid);
			return new ModelAndView("votingReceipt", "c" , v);
		}else {
			System.out.println(" Else  "+b);
			map.addAttribute("msg", "You have not voted yet. !!");
			return new ModelAndView("searchVotingReceipt");
		}
		
		
	}
	
	
	@Override
	public ModelAndView save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
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
	
	@PostMapping("/getFrontResult")
	public ModelAndView getResult(HttpServletRequest request) {
		
		String vCode = request.getParameter("votingCode");
		List<Result> r = userService.getVotingResult(vCode);
		
		return new ModelAndView("electionResult", "result", r);
	}
	

}
