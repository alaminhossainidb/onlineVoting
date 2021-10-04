package com.spring.controller.impl;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.ICommonController;

public interface IAdminController extends ICommonController {

ModelAndView saveVotingType(HttpServletRequest request);

ModelAndView getResult(HttpServletRequest request, Model model);

ModelAndView save(HttpServletRequest request, MultipartFile photo) throws IOException;

ModelAndView saveCandidate(HttpServletRequest request) ;

}
