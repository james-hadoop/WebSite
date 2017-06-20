package com.leyao.web.controller;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.leyao.web.controller.base.BaseController;
import com.leyao.web.controller.base.CommonResponse;
import com.leyao.web.controller.base.ReturnCode;
import com.leyao.web.entity.GridContent;

@RestController
@RequestMapping("/leyao_web")
public class LeyaoWebController extends BaseController {
    private static final Logger logger = Logger.getLogger(LeyaoWebController.class);

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public CommonResponse<Void> test() {
        return this.buildResponse(ReturnCode.SUCCESS);
    }

    public GridContent getPage1Urls() {
        return new GridContent();
    }

    public GridContent getPage2Urls() {
        return new GridContent();
    }

    public GridContent getPage3Urls() {
        return new GridContent();
    }
}
