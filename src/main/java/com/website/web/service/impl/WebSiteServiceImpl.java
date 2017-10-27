package com.website.web.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.website.web.dao.mapper.WebSiteMapper;
import com.website.web.entity.WebSiteEntity;
import com.website.web.service.IWebSiteService;

@Service
public class WebSiteServiceImpl implements IWebSiteService {
    @Autowired
    WebSiteMapper websiteMapper;

    @Override
    public List<WebSiteEntity> getItemUrls(Map<String, Object> paramMap) {
        return websiteMapper.getItemUrls(paramMap);
    }

    @Override
    public int getItemUrlsCount(Map<String, Object> paramMap) {
        return websiteMapper.getItemUrlsCount(paramMap);
    }
}