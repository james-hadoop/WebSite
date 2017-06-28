package com.leyao.web.service;

import java.util.List;
import java.util.Map;

import com.leyao.web.entity.LeyaoWeb;

public interface ILeyaoWebService {
    List<LeyaoWeb> getItemUrls(Map<String, Object> paramMap);

    int getItemUrlsCount(Map<String, Object> paramMap);
}