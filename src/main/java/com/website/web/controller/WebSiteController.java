package com.website.web.controller;

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

import com.website.web.controller.base.BaseController;
import com.website.web.entity.GridContent;
import com.website.web.entity.WebSiteEntity;
import com.website.web.service.IWebSiteService;

@RestController
@RequestMapping("/web_site")
public class WebSiteController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(WebSiteController.class);

    @Autowired
    IWebSiteService websiteService;

    @RequestMapping(value = "/getItemUrlsWithoutPaging", method = RequestMethod.GET)
    public List<String> getItemUrlsWithoutPaging(@RequestParam(value = "parent_item_id", defaultValue = "0") Integer itemParentId,
                    @RequestParam(value = "item_type", defaultValue = "-1") Integer itemType, @RequestParam(value = "rows", defaultValue = "10") Integer rows) {
        logger.info("/web_site/getItemUrlsWithoutPaging() called: parent_item_id={}, item_type={}", itemParentId, itemType);
        List<String> listItemUrls = new ArrayList<String>();

        try {
            Map<String, Object> paramMap = new HashMap<String, Object>();
            paramMap.put("itemParentId", itemParentId);
            paramMap.put("itemType", itemType);

            List<WebSiteEntity> listWebsiteEntity = websiteService.getItemUrls(paramMap);
            if (null != listWebsiteEntity && 0 != listWebsiteEntity.size()) {
                int resultSize = rows;
                for (WebSiteEntity entity : listWebsiteEntity) {
                    if (resultSize-- < 1) {
                        // to limit the result size does not exceeds the value
                        // of "rows" parameter
                        break;
                    }
                    listItemUrls.add(entity.getItemUrl());
                }
            }

            return listItemUrls;
        } catch (Exception e) {
            logger.error("/web_site/getItemUrlsWithoutPaging()", e);
            return listItemUrls;
        }
    }

    @RequestMapping(value = "/getItemUrls", method = RequestMethod.GET)
    public GridContent getItemUrls(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "rows", defaultValue = "10") Integer rows,
                    @RequestParam(value = "parent_item_id", defaultValue = "-1") Integer itemParentId, @RequestParam(value = "item_type", defaultValue = "-1") Integer itemType) {
        logger.info("/web_site/getItemUrls() called: parent_item_id={}, item_type={}, page={}, rows={}", itemParentId, itemType, page, rows);
        GridContent gridcontent = new GridContent();

        try {
            int start = (page - 1) * rows;
            int end = rows;

            Map<String, Object> paramMap = new HashMap<String, Object>();
            paramMap.put("itemParentId", itemParentId);
            paramMap.put("itemType", itemType);
            paramMap.put("start", start);
            paramMap.put("end", end);

            List<WebSiteEntity> listWebsiteEntity = websiteService.getItemUrls(paramMap);
            int count = websiteService.getItemUrlsCount(paramMap);

            gridcontent.setRows(listWebsiteEntity);
            gridcontent.setTotal(count);
        } catch (Exception e) {
            logger.error("/web_site/getItemUrls()", e);
            return gridcontent;
        }

        return gridcontent;
    }
}