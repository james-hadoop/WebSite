package com.leyao.web.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.leyao.web.controller.base.BaseController;

@RestController
@RequestMapping("/leyao_web_ui")
public class LeyaoWebUiController extends BaseController {
	@RequestMapping(value = "/index_page", method = RequestMethod.GET)
	public ModelAndView index() {
		System.out.println("index() called...");
		return new ModelAndView("Leyao/index");
	}
}