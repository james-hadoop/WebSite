package com.leyao.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.leyao.web.controller.base.BaseController;

@RestController
@RequestMapping("/")
public class LeyaoWebUiController extends BaseController {

	@RequestMapping(value = "/index_page", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("/leyao_web_ui/index() called");

		return new ModelAndView("index");
	}

//	@RequestMapping(value = "/shijian1", method = RequestMethod.GET)
//	public ModelAndView shijian1(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		System.out.println("/leyao_web_ui/shijian1() called");
//
//		return new ModelAndView("shijian1");
//	}
}