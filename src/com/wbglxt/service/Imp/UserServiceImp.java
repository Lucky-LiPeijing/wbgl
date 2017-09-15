package com.wbglxt.service.Imp;

import com.wbglxt.dao.UserDao;
import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.User;
import com.wbglxt.service.UserService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/11.
 */
@Transactional
public class UserServiceImp implements UserService {

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User login(User user) {
        User existUser = userDao.findByUsernameAndPassword(user);
        return existUser;
    }

    @Override
    public PageBean<User> findPage(Integer currPage) {
        PageBean<User> pageBean = new PageBean<User>();
        pageBean.setCurrPage(currPage);
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        //总记录数
        int totalCount = userDao.findCount();
        pageBean.setTotalCount(totalCount);
        //总页数
        double tc = totalCount;
        Double num = Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        //每页显示数据
        int begin = (currPage - 1) * pageSize;
        List<User> list = userDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public User findById(Integer uid) {
        return userDao.findById(uid);
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void delete(User user) {
        userDao.delete(user);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }
}
