package com.wbglxt.dao;

import com.wbglxt.domain.Microblog;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public interface MicroblogDao {


    Microblog findById(Integer mid);

    void delete(Microblog microblog);

    int findCount();

    List<Microblog> findByPage(int begin, int pageSize);

    List<Microblog> findByUid(int uid);

    void save(Microblog microblog);


    void copy(Microblog microblog);
}
