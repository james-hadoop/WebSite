package com.website.web.service;

import java.util.List;
import java.util.Map;

import com.website.web.entity.WebSiteEntity;

public interface IWebSiteService {
    List<WebSiteEntity> getItemUrls(Map<String, Object> paramMap);

    int getItemUrlsCount(Map<String, Object> paramMap);
}