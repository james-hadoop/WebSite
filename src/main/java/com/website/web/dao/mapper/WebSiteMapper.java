package com.website.web.dao.mapper;

import java.util.List;
import java.util.Map;

import com.website.web.annotation.MybatisMapper;
import com.website.web.entity.WebSiteEntity;

@MybatisMapper
public interface WebSiteMapper {
    List<WebSiteEntity> getItemUrls(Map<String, Object> paramMap);

    int getItemUrlsCount(Map<String, Object> paramMap);
}