package com.website.mybatis.client;

import com.website.mybatis.model.WebEventEntity;

public interface WebSiteMapper {
    int deleteByPrimaryKey(Integer itemId);

    int insert(WebEventEntity record);

    int insertSelective(WebEventEntity record);

    WebEventEntity selectByPrimaryKey(Integer itemId);

    int updateByPrimaryKeySelective(WebEventEntity record);

    int updateByPrimaryKey(WebEventEntity record);
}