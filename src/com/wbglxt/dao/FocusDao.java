package com.wbglxt.dao;

import com.wbglxt.domain.Focus;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
public interface FocusDao {
    Focus findById(int fid);

    void delete(Focus focus);

    int findCount();

    List<Focus> findByPage(int begin, int pageSize);

    void save(Focus focus);
}
