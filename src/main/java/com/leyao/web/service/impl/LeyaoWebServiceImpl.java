package com.leyao.web.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leyao.web.dao.mapper.LeyaoWebMapper;
import com.leyao.web.entity.LeyaoWeb;
import com.leyao.web.service.ILeyaoWebService;

@Service
public class LeyaoWebServiceImpl implements ILeyaoWebService {
    @Autowired
    LeyaoWebMapper leyaoWebMapper;

    @Override
    public List<LeyaoWeb> getItemUrls(Map<String, Object> paramMap) {
        return leyaoWebMapper.getItemUrls(paramMap);
    }

    @Override
    public int getItemUrlsCount(Map<String, Object> paramMap) {
        return leyaoWebMapper.getItemUrlsCount(paramMap);
    }
}