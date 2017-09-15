package com.wbglxt.service;

import com.wbglxt.domain.Microblog;
import com.wbglxt.domain.PageBean;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public interface MicroblogService {
    
    Microblog findById(Integer mid);

    void delete(Microblog microblog);

    PageBean<Microblog> findPage(Integer currPage);

    List<Microblog> findByUid(int uid);

    void save(Microblog microblog);


    void copy(Microblog microblog);
}
