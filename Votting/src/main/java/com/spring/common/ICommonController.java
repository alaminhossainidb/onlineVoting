package com.spring.common;

import javax.servlet.http.HttpServletRequest;


import org.springframework.web.servlet.ModelAndView;

public interface ICommonController {
	
	public ModelAndView save(HttpServletRequest request);
	public ModelAndView update(HttpServletRequest request);
	public ModelAndView edit(String id);
	public ModelAndView delete(String id);
	public ModelAndView getAll();
	

}
