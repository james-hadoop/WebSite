package com.website.mybatis.client;

import com.website.mybatis.model.TEventPage;

public interface TEventPageMapper {
    int deleteByPrimaryKey(Long hEventId);

    int insert(TEventPage record);

    int insertSelective(TEventPage record);

    TEventPage selectByPrimaryKey(Long hEventId);

    int updateByPrimaryKeySelective(TEventPage record);

    int updateByPrimaryKeyWithBLOBs(TEventPage record);

    int updateByPrimaryKey(TEventPage record);
}