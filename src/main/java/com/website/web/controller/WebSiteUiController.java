package com.website.web.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.website.web.controller.base.BaseController;

@RestController
@RequestMapping("/website_ui")
public class WebSiteUiController extends BaseController {

    @RequestMapping(value = "/index_page", method = RequestMethod.GET)
    public ModelAndView index() {
        System.out.println("index() called...");
        return new ModelAndView("WebSiteUiController/index");
    }
}