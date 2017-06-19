package com.leyao.web.controller;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.leyao.web.controller.base.BaseController;
import com.leyao.web.controller.base.CommonResponse;
import com.leyao.web.controller.base.ReturnCode;

@RestController
@RequestMapping("/leyao_web")
public class LeyaoWebController extends BaseController {
    private static final Logger logger = Logger.getLogger(LeyaoWebController.class);

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public CommonResponse<Void> test() {
        return this.buildResponse(ReturnCode.SUCCESS);
    }
}
