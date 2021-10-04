package com.spring.controller.impl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.ICommonController;

public interface IUserController extends ICommonController {

	ModelAndView passVal(HttpServletRequest request, ModelMap map);

	ModelAndView votingPage(HttpServletRequest request, ModelMap map);

	ModelAndView vote(String id, @PathVariable String nid, ModelMap map);

	ModelAndView searchVotingReceipt(HttpServletRequest request , ModelMap map);

}
