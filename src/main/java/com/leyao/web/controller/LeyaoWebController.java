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

    @RequestMapping(value = "/getItemUrlsWithoutPaging", method = RequestMethod.GET)
    public List<String> getItemUrlsWithoutPaging(@RequestParam(value = "parent_item_id", defaultValue = "0") Integer parentItemId, @RequestParam(value = "rows", defaultValue = "10") Integer rows) {
        logger.info("/leyao_web/getItemUrlsWithoutPaging() called: parent_item_id={}", parentItemId);
        List<String> listItemUrls = new ArrayList<String>();

        try {
            Map<String, Object> paramMap = new HashMap<String, Object>();
            paramMap.put("tabParentId", parentItemId);

            List<LeyaoWeb> listLeyaoWeb = leyaoWebService.getItemUrls(paramMap);
            if (null != listLeyaoWeb && 0 != listLeyaoWeb.size()) {
                int resultSize = rows;
                for (LeyaoWeb leyaoWeb : listLeyaoWeb) {
                    if (resultSize-- < 1) {
                        // to limit the result size does not exceeds the value
                        // of "rows" parameter
                        break;
                    }
                    listItemUrls.add(leyaoWeb.getItemUrl());
                }
            }

            return listItemUrls;
        } catch (Exception e) {
            logger.error("/leyao_web/getItemUrlsWithoutPaging()", e);
            return listItemUrls;
        }
    }

    @RequestMapping(value = "/getItemUrls", method = RequestMethod.GET)
    public GridContent getItemUrls(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "rows", defaultValue = "10") Integer rows,
                    @RequestParam(value = "parent_item_id", defaultValue = "-1") Integer parentItemId) {
        logger.info("/leyao_web/getItemUrls() called: parent_item_id={}, page={}, rows={}", parentItemId, page, rows);
        GridContent gridcontent = new GridContent();

        try {
            int start = (page - 1) * rows;
            int end = rows;

            Map<String, Object> paramMap = new HashMap<String, Object>();
            paramMap.put("itemParentId", parentItemId);
            paramMap.put("start", start);
            paramMap.put("end", end);

            List<LeyaoWeb> listLeyaoWeb = leyaoWebService.getItemUrls(paramMap);
            int count = leyaoWebService.getItemUrlsCount(paramMap);

            gridcontent.setRows(listLeyaoWeb);
            gridcontent.setTotal(count);
        } catch (Exception e) {
            logger.error("/leyao_web/getItemUrls()", e);
            return gridcontent;
        }

        return gridcontent;
    }
}