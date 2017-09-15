package com.wbglxt.service;

import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.User;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public interface UserService {
    User login(User user);

    void save(User user);

    PageBean<User> findPage(Integer currPage);

    void update(User user);

    User findById(Integer uid);

    void delete(User user);
}
