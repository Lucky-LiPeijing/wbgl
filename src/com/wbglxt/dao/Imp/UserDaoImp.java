package com.wbglxt.dao.Imp;

import com.wbglxt.dao.UserDao;
import com.wbglxt.domain.User;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public class UserDaoImp extends HibernateDaoSupport implements UserDao {
    @Override
    public User findByUsernameAndPassword(User user) {
        String hql = "from User where username = ? and password = ?";
        List<User> list = this.getHibernateTemplate().find(hql, user.getUsername(), user.getPassword());
        System.out.println(user.getUsername());
        System.out.println(user.getPassword());
        if (list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<User> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
        List<User> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
        return list;
    }

    @Override
    public int findCount() {
        String hql = "select count(*) from User ";
        List<Long> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return list.get(0).intValue();
        }
        return 0;
    }

    @Override
    public User findById(Integer uid) {
        return this.getHibernateTemplate().get(User.class, uid);
    }

    @Override
    public void save(User user) {
        this.getHibernateTemplate().save(user);
    }

    @Override
    public void update(User user) {
        this.getHibernateTemplate().update(user);
    }

    @Override
    public void delete(User user) {
        this.getHibernateTemplate().delete(user);
    }

    @Override
    public List<User> findAll() {
        return this.getHibernateTemplate().find("from User");
    }
}
