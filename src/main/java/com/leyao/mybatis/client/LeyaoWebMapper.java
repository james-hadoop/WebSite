package com.leyao.mybatis.client;

import com.leyao.mybatis.model.LeyaoWeb;

public interface LeyaoWebMapper {
    int deleteByPrimaryKey(Integer itemId);

    int insert(LeyaoWeb record);

    int insertSelective(LeyaoWeb record);

    LeyaoWeb selectByPrimaryKey(Integer itemId);

    int updateByPrimaryKeySelective(LeyaoWeb record);

    int updateByPrimaryKey(LeyaoWeb record);
}