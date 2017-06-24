package com.leyao.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.leyao.web.controller.base.BaseController;
import com.leyao.web.entity.GridContent;
import com.leyao.web.entity.LeyaoWeb;
import com.leyao.web.service.ILeyaoWebService;

@RestController
@RequestMapping("/leyao_web")
public class LeyaoWebController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(LeyaoWebController.class);

    @Autowired
    ILeyaoWebService leyaoWebService;

    @RequestMapping(value = "/getPageUrlsWithoutPaging", method = RequestMethod.GET)
    public List<String> getPageUrlsWithoutPaging(
            @RequestParam(value = "clicked_page_id", defaultValue = "0") Integer clickedPageId) {
        logger.info("/leyao_web/getPageUrlsWithoutPaging() called: clicked_page_id={}", clickedPageId);
        List<String> listPageUrls = new ArrayList<String>();

        try {
            Map<String, Object> paramMap = new HashMap<String, Object>();
            paramMap.put("tabParentId", clickedPageId);

            List<LeyaoWeb> listLeyaoWeb = leyaoWebService.getPageUrls(paramMap);
            if (null != listLeyaoWeb && 0 != listLeyaoWeb.size()) {
                for (LeyaoWeb leyaoWeb : listLeyaoWeb) {
                    listPageUrls.add(leyaoWeb.getTabUrl());
                }
            }

            return listPageUrls;
        } catch (Exception e) {
            logger.error("/leyao_web/getPageUrlsWithoutPaging()", e);
            return listPageUrls;
        }
    }

    @RequestMapping(value = "/getPageUrls", method = RequestMethod.GET)
    public GridContent getPageUrls(@RequestParam(value = "page", defaultValue = "1") Integer page,
            @RequestParam(value = "rows", defaultValue = "10") Integer rows,
            @RequestParam(value = "clicked_page_id", defaultValue = "0") Integer clickedPageId) {
        logger.info("/leyao_web/getPageUrls() called: clicked_page_id={}, page={}, rows={}", clickedPageId, page, rows);
        GridContent gridcontent = new GridContent();

        try {
            int start = (page - 1) * rows;
            int end = rows;

            Map<String, Object> paramMap = new HashMap<String, Object>();
            paramMap.put("tabParentId", clickedPageId);
            paramMap.put("start", start);
            paramMap.put("end", end);

            List<LeyaoWeb> listLeyaoWeb = leyaoWebService.getPageUrls(paramMap);
            int count = leyaoWebService.getPageUrlsCount(paramMap);

            gridcontent.setRows(listLeyaoWeb);
            gridcontent.setTotal(count);
        } catch (Exception e) {
            logger.error("/leyao_web/getPageUrls()", e);
            return gridcontent;
        }

        return gridcontent;
    }
}