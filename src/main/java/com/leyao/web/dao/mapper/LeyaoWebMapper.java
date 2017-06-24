package com.leyao.web.dao.mapper;

import java.util.List;
import java.util.Map;

import com.leyao.web.annotation.MybatisMapper;
import com.leyao.web.entity.LeyaoWeb;

@MybatisMapper
public interface LeyaoWebMapper {
    List<LeyaoWeb> getPageUrls(Map<String, Object> paramMap);

    int getPageUrlsCount(Map<String, Object> paramMap);
}