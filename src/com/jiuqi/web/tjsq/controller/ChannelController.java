package com.jiuqi.web.tjsq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 栏目管理Channel
 * @author lnn
 *
 */
@Controller
@RequestMapping(value = "channel")
public class ChannelController {
	
	/**
	 * 获取栏目列表
	 * @param request
	 * @return 返回栏目列表ModelAndView
	 */
	@RequestMapping("list.html")
	public ModelAndView getAllChannel(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/channel");
		return mav;
	}
	
	/**
	 * 查询栏目
	 * @param titlename 栏目名称
	 * @param request
	 * @return 查询栏目ModelAndView
	 */
	@RequestMapping("search.html")
	public ModelAndView searchChannel(String titlename, HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/channel");
		mav.addObject("title", titlename);
		return mav;
	}
	
	/**
	 * 添加栏目
	 * @param request
	 * @return 返回添加栏目ModelAndView
	 */
	@RequestMapping("add.html")
	public ModelAndView addChannel(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/channel/add");
		return mav;
	}
	
	/**
	 * 修改栏目
	 * @param request
	 * @return 返回修改栏目ModelAndView
	 */
	@RequestMapping("modify.html")
	public ModelAndView modifyChannel(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/channel/modify");
		return mav;
	}
	
	/**
	 * 查看栏目
	 * @param request
	 * @return 返回查看栏目ModelAndView
	 */
	@RequestMapping("look.html")
	public ModelAndView lookChannel(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/channel/look");
		return mav;
	}
}
