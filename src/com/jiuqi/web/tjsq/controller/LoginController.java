package com.jiuqi.web.tjsq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登录Controller
 * @author lnn
 *
 */

@Controller
@RequestMapping(value = "/")
public class LoginController {
	
	/*
	 * 用户登录
	 */
	@RequestMapping(value = "/login.html")
	public String getLoginPage(HttpServletRequest request){
		return "login";
	}
	
	/*
	 * 首页
	 */
	@RequestMapping("login")
	public ModelAndView Login(String loginName, String password, HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/main");
		return mav; 
	}
	
}
