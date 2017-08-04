package com.leyao.mybatis.client;

import com.leyao.mybatis.model.TEventPage;

public interface TEventPageMapper {
    int deleteByPrimaryKey(Long hEventId);

    int insert(TEventPage record);

    int insertSelective(TEventPage record);

    TEventPage selectByPrimaryKey(Long hEventId);

    int updateByPrimaryKeySelective(TEventPage record);

    int updateByPrimaryKeyWithBLOBs(TEventPage record);

    int updateByPrimaryKey(TEventPage record);
}