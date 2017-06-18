package com.leyao.web.dao.mapper;

import com.leyao.web.entity.LeyaoWeb;

public interface LeyaoWebMapper {
    int deleteByPrimaryKey(Integer rowNumber);

    int insert(LeyaoWeb record);

    int insertSelective(LeyaoWeb record);

    LeyaoWeb selectByPrimaryKey(Integer rowNumber);

    int updateByPrimaryKeySelective(LeyaoWeb record);

    int updateByPrimaryKey(LeyaoWeb record);
}