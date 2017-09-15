package com.wbglxt.service;

import com.wbglxt.domain.Focus;
import com.wbglxt.domain.PageBean;

/**
 * Created by LiPeijing on 2017/9/13.
 */
public interface FocusService {
    PageBean<Focus> findPage(Integer currPage);

    Focus findById(int fid);

    void delete(Focus focus);

    void save(Focus focus);
}
