package com.wbglxt.dao;

import com.wbglxt.domain.User;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public interface UserDao {
    User findByUsernameAndPassword(User user);

    void save(User user);

    List<User> findByPage(int begin, int pageSize);

    int findCount();

    User findById(Integer uid);

    void update(User user);

    void delete(User user);

    List<User> findAll();
}
